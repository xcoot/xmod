.class public final Lcom/android/server/locales/LocaleManagerServicePackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

.field public mLocaleManagerService:Lcom/android/server/locales/LocaleManagerService;

.field public mSystemAppUpdateTracker:Lcom/android/server/locales/SystemAppUpdateTracker;


# virtual methods
.method public final onPackageAddedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    const-string v0, "android.intent.extra.ARCHIVAL"

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    if-eqz p3, :cond_0

    .line 20
    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerBackupHelper;->getArchivedPackagesFile()Ljava/io/File;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/server/locales/LocaleManagerBackupHelper;->getArchivedPackagesSp(Ljava/io/File;)Landroid/content/SharedPreferences;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Landroid/util/ArraySet;

    .line 34
    .line 35
    new-instance v2, Landroid/util/ArraySet;

    .line 36
    .line 37
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, p3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0, p3, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    if-nez p3, :cond_0

    .line 66
    .line 67
    const-string p3, "LocaleManagerBkpHelper"

    .line 68
    .line 69
    const-string/jumbo v0, "failed to add the package"

    .line 70
    .line 71
    .line 72
    invoke-static {p3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->checkStageDataAndApplyRestore(ILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final onPackageDataCleared(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v0, "android"

    .line 7
    .line 8
    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->removePackageFromPersistedInfo(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    const-string p1, "LocaleManagerBkpHelper"

    .line 21
    .line 22
    const-string p2, "Exception in onPackageDataCleared."

    .line 23
    .line 24
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "android"

    .line 7
    .line 8
    invoke-static {v1}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->removePackageFromPersistedInfo(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    const-string v1, "LocaleManagerBkpHelper"

    .line 21
    .line 22
    const-string v2, "Exception in onPackageRemoved."

    .line 23
    .line 24
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;->mLocaleManagerService:Lcom/android/server/locales/LocaleManagerService;

    .line 28
    .line 29
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static {p2, p1}, Lcom/android/server/locales/LocaleManagerService;->getXmlFileNameForUser(ILjava/lang/String;)Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    const-string p1, "LocaleManagerService"

    .line 47
    .line 48
    const-string p2, "Delete the override LocaleConfig."

    .line 49
    .line 50
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
.end method

.method public final onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0}, Lcom/android/server/locales/LocaleManagerBackupHelper;->getArchivedPackagesFile()Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const-string v5, "LocaleManagerBkpHelper"

    .line 23
    .line 24
    if-eqz v4, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Lcom/android/server/locales/LocaleManagerBackupHelper;->getArchivedPackagesSp(Ljava/io/File;)Landroid/content/SharedPreferences;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    new-instance v6, Landroid/util/ArraySet;

    .line 31
    .line 32
    new-instance v7, Landroid/util/ArraySet;

    .line 33
    .line 34
    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-interface {v4, v2, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_3

    .line 49
    .line 50
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    if-eqz v8, :cond_1

    .line 59
    .line 60
    invoke-interface {v7, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_0

    .line 69
    .line 70
    const-string v2, "Failed to remove the user"

    .line 71
    .line 72
    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :cond_0
    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_2

    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    invoke-interface {v7, v2, v6}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-nez v2, :cond_2

    .line 98
    .line 99
    const-string/jumbo v2, "failed to remove the package"

    .line 100
    .line 101
    .line 102
    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    :cond_2
    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->checkStageDataAndApplyRestore(ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    iget-object v2, v0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mLocaleManagerService:Lcom/android/server/locales/LocaleManagerService;

    .line 109
    .line 110
    iget-object v3, v0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mDelegateAppLocalePackages:Landroid/content/SharedPreferences;

    .line 111
    .line 112
    if-nez v3, :cond_4

    .line 113
    .line 114
    const-string v0, "Failed to persist data into the shared preference!"

    .line 115
    .line 116
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    new-instance v4, Landroid/util/ArraySet;

    .line 125
    .line 126
    iget-object v6, v0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mDelegateAppLocalePackages:Landroid/content/SharedPreferences;

    .line 127
    .line 128
    new-instance v7, Landroid/util/ArraySet;

    .line 129
    .line 130
    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-interface {v6, v3, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-direct {v4, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 138
    .line 139
    .line 140
    :try_start_0
    invoke-virtual {v2, p1, v1}, Lcom/android/server/locales/LocaleManagerService;->getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v3}, Landroid/os/LocaleList;->isEmpty()Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-nez v3, :cond_6

    .line 149
    .line 150
    invoke-virtual {v4, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 154
    if-nez v3, :cond_5

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_5
    :try_start_1
    new-instance v3, Landroid/app/LocaleConfig;

    .line 158
    .line 159
    iget-object v0, v0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mContext:Landroid/content/Context;

    .line 160
    .line 161
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    const/4 v6, 0x0

    .line 166
    invoke-virtual {v0, p1, v6, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-direct {v3, v0}, Landroid/app/LocaleConfig;-><init>(Landroid/content/Context;)V

    .line 171
    .line 172
    .line 173
    const/4 v0, 0x4

    .line 174
    invoke-virtual {v2, p1, v1, v3, v0}, Lcom/android/server/locales/LocaleManagerService;->removeUnsupportedAppLocales(Ljava/lang/String;ILandroid/app/LocaleConfig;I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v2, "Can not found the package name : "

    .line 182
    .line 183
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v2, " / "

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :catch_1
    move-exception v0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    const-string v2, "Exception when getting locales for "

    .line 209
    .line 210
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-static {v5, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    .line 222
    .line 223
    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;->mSystemAppUpdateTracker:Lcom/android/server/locales/SystemAppUpdateTracker;

    .line 224
    .line 225
    iget-object v0, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mLocaleManagerService:Lcom/android/server/locales/LocaleManagerService;

    .line 226
    .line 227
    :try_start_2
    iget-object v1, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mUpdatedApps:Ljava/util/Set;

    .line 228
    .line 229
    check-cast v1, Ljava/util/HashSet;

    .line 230
    .line 231
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 235
    if-nez v1, :cond_a

    .line 236
    .line 237
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mContext:Landroid/content/Context;

    .line 238
    .line 239
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    const-wide/32 v2, 0x100000

    .line 244
    .line 245
    .line 246
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    .line 251
    .line 252
    .line 253
    move-result-object v1
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 254
    goto :goto_2

    .line 255
    :catch_2
    const/4 v1, 0x0

    .line 256
    :goto_2
    if-nez v1, :cond_7

    .line 257
    .line 258
    goto :goto_5

    .line 259
    :cond_7
    :try_start_4
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 260
    .line 261
    and-int/lit16 v1, v1, 0x80

    .line 262
    .line 263
    if-eqz v1, :cond_a

    .line 264
    .line 265
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 266
    .line 267
    .line 268
    move-result p2

    .line 269
    invoke-virtual {v0, p2, p1}, Lcom/android/server/locales/LocaleManagerService;->getInstallingPackageName(ILjava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 273
    if-nez v1, :cond_8

    .line 274
    .line 275
    goto :goto_5

    .line 276
    :cond_8
    :try_start_5
    invoke-virtual {v0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-nez v2, :cond_9

    .line 285
    .line 286
    invoke-virtual {v0, p2, p1}, Lcom/android/server/locales/LocaleManagerService;->getInstallingPackageName(ILjava/lang/String;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    if-eqz v2, :cond_9

    .line 291
    .line 292
    const-string v3, "android.intent.action.APPLICATION_LOCALE_CHANGED"

    .line 293
    .line 294
    invoke-static {v3, p1, v1}, Lcom/android/server/locales/LocaleManagerService;->createBaseIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/LocaleList;)Landroid/content/Intent;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    .line 300
    .line 301
    iget-object v0, v0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    .line 302
    .line 303
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 304
    .line 305
    .line 306
    move-result-object p2

    .line 307
    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 308
    .line 309
    .line 310
    goto :goto_3

    .line 311
    :catch_3
    move-exception p0

    .line 312
    goto :goto_4

    .line 313
    :catch_4
    :cond_9
    :goto_3
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/locales/SystemAppUpdateTracker;->updateBroadcastedAppsList(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 314
    .line 315
    .line 316
    goto :goto_5

    .line 317
    :goto_4
    const-string p1, "SystemAppUpdateTracker"

    .line 318
    .line 319
    const-string p2, "Exception in onPackageUpdateFinished."

    .line 320
    .line 321
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    .line 323
    .line 324
    :cond_a
    :goto_5
    return-void
.end method
