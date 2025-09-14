.class public Lcom/android/server/backup/SystemBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final WALLPAPER_IMAGE:Ljava/lang/String;

.field public static final WALLPAPER_INFO:Ljava/lang/String;

.field public static final sEligibleHelpersForNonSystemUser:Ljava/util/Set;

.field public static final sEligibleHelpersForProfileUser:Ljava/util/Set;


# instance fields
.field public mIsProfileUser:Z

.field public mLogger:Landroid/app/backup/BackupRestoreEventLogger;

.field public mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    new-instance v1, Ljava/io/File;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string/jumbo v3, "wallpaper"

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sput-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    new-instance v1, Ljava/io/File;

    .line 35
    .line 36
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string/jumbo v2, "wallpaper_info.xml"

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    .line 51
    .line 52
    const-string v4, "app_locales"

    .line 53
    .line 54
    const-string/jumbo v5, "companion"

    .line 55
    .line 56
    .line 57
    const-string/jumbo v1, "permissions"

    .line 58
    .line 59
    .line 60
    const-string/jumbo v2, "notifications"

    .line 61
    .line 62
    .line 63
    const-string v3, "account_sync_settings"

    .line 64
    .line 65
    const-string v6, "app_gender"

    .line 66
    .line 67
    const-string/jumbo v7, "system_gender"

    .line 68
    .line 69
    .line 70
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->sEligibleHelpersForProfileUser:Ljava/util/Set;

    .line 79
    .line 80
    const-string v1, "account_manager"

    .line 81
    .line 82
    const-string/jumbo v2, "usage_stats"

    .line 83
    .line 84
    .line 85
    const-string/jumbo v3, "preferred_activities"

    .line 86
    .line 87
    .line 88
    const-string/jumbo v4, "shortcut_manager"

    .line 89
    .line 90
    .line 91
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    new-instance v2, Ljava/util/HashSet;

    .line 100
    .line 101
    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 105
    .line 106
    .line 107
    sput-object v2, Lcom/android/server/backup/SystemBackupAgent;->sEligibleHelpersForNonSystemUser:Ljava/util/Set;

    .line 108
    .line 109
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mIsProfileUser:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mIsProfileUser:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    sget-object v0, Lcom/android/server/backup/SystemBackupAgent;->sEligibleHelpersForProfileUser:Ljava/util/Set;

    .line 12
    .line 13
    check-cast v0, Landroid/util/ArraySet;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    sget-object v0, Lcom/android/server/backup/SystemBackupAgent;->sEligibleHelpersForNonSystemUser:Ljava/util/Set;

    .line 21
    .line 22
    check-cast v0, Ljava/util/HashSet;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    :goto_0
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0, p1, p2}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/android/server/backup/Flags;->enableMetricsSystemBackupAgents()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/backup/SystemBackupAgent;->mLogger:Landroid/app/backup/BackupRestoreEventLogger;

    .line 40
    .line 41
    invoke-virtual {p2, p0}, Landroid/app/backup/BackupHelperWithLogger;->setLogger(Landroid/app/backup/BackupRestoreEventLogger;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method

.method public final onCreate(Landroid/os/UserHandle;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/backup/BackupAgentHelper;->onCreate(Landroid/os/UserHandle;I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/backup/BackupAgentHelper;->getBackupRestoreEventLogger()Landroid/app/backup/BackupRestoreEventLogger;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mLogger:Landroid/app/backup/BackupRestoreEventLogger;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    iput p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-virtual {p0, p1, p2}, Landroid/app/backup/BackupAgentHelper;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-class p2, Landroid/os/UserManager;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/os/UserManager;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/os/UserManager;->isProfile()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iput-boolean p1, p0, Lcom/android/server/backup/SystemBackupAgent;->mIsProfileUser:Z

    .line 36
    .line 37
    :cond_0
    new-instance p1, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;

    .line 38
    .line 39
    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 40
    .line 41
    invoke-direct {p1, p0, p2}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;-><init>(Landroid/content/Context;I)V

    .line 42
    .line 43
    .line 44
    const-string p2, "account_sync_settings"

    .line 45
    .line 46
    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 47
    .line 48
    .line 49
    new-instance p1, Lcom/android/server/backup/PreferredActivityBackupHelper;

    .line 50
    .line 51
    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 52
    .line 53
    invoke-direct {p1, p2}, Lcom/android/server/backup/PreferredActivityBackupHelper;-><init>(I)V

    .line 54
    .line 55
    .line 56
    const-string/jumbo p2, "preferred_activities"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 60
    .line 61
    .line 62
    new-instance p1, Lcom/android/server/backup/NotificationBackupHelper;

    .line 63
    .line 64
    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 65
    .line 66
    invoke-direct {p1, p2}, Lcom/android/server/backup/NotificationBackupHelper;-><init>(I)V

    .line 67
    .line 68
    .line 69
    const-string/jumbo p2, "notifications"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 73
    .line 74
    .line 75
    new-instance p1, Lcom/android/server/backup/PermissionBackupHelper;

    .line 76
    .line 77
    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 78
    .line 79
    invoke-direct {p1, p2}, Lcom/android/server/backup/PermissionBackupHelper;-><init>(I)V

    .line 80
    .line 81
    .line 82
    const-string/jumbo p2, "permissions"

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 86
    .line 87
    .line 88
    new-instance p1, Lcom/android/server/backup/UsageStatsBackupHelper;

    .line 89
    .line 90
    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 91
    .line 92
    invoke-direct {p1, p2}, Lcom/android/server/backup/UsageStatsBackupHelper;-><init>(I)V

    .line 93
    .line 94
    .line 95
    const-string/jumbo p2, "usage_stats"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 99
    .line 100
    .line 101
    new-instance p1, Lcom/android/server/backup/ShortcutBackupHelper;

    .line 102
    .line 103
    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 104
    .line 105
    invoke-direct {p1, p2}, Lcom/android/server/backup/ShortcutBackupHelper;-><init>(I)V

    .line 106
    .line 107
    .line 108
    const-string/jumbo p2, "shortcut_manager"

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 112
    .line 113
    .line 114
    new-instance p1, Lcom/android/server/backup/AccountManagerBackupHelper;

    .line 115
    .line 116
    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 117
    .line 118
    invoke-direct {p1, p2}, Lcom/android/server/backup/AccountManagerBackupHelper;-><init>(I)V

    .line 119
    .line 120
    .line 121
    const-string p2, "account_manager"

    .line 122
    .line 123
    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/app/backup/BackupAgentHelper;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    const-string p2, "android.software.slices_disabled"

    .line 131
    .line 132
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-nez p1, :cond_1

    .line 137
    .line 138
    new-instance p1, Lcom/android/server/backup/SliceBackupHelper;

    .line 139
    .line 140
    invoke-direct {p1, p0}, Lcom/android/server/backup/SliceBackupHelper;-><init>(Landroid/content/Context;)V

    .line 141
    .line 142
    .line 143
    const-string/jumbo p2, "slices"

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 147
    .line 148
    .line 149
    :cond_1
    new-instance p1, Lcom/android/server/backup/PeopleBackupHelper;

    .line 150
    .line 151
    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 152
    .line 153
    invoke-direct {p1, p2}, Lcom/android/server/backup/PeopleBackupHelper;-><init>(I)V

    .line 154
    .line 155
    .line 156
    const-string/jumbo p2, "people"

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 160
    .line 161
    .line 162
    new-instance p1, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;

    .line 163
    .line 164
    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 165
    .line 166
    invoke-direct {p1, p2}, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;-><init>(I)V

    .line 167
    .line 168
    .line 169
    const-string p2, "app_locales"

    .line 170
    .line 171
    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 172
    .line 173
    .line 174
    new-instance p1, Lcom/android/server/backup/AppGrammaticalGenderBackupHelper;

    .line 175
    .line 176
    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 177
    .line 178
    invoke-direct {p1, p2}, Lcom/android/server/backup/AppGrammaticalGenderBackupHelper;-><init>(I)V

    .line 179
    .line 180
    .line 181
    const-string p2, "app_gender"

    .line 182
    .line 183
    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 184
    .line 185
    .line 186
    new-instance p1, Lcom/android/server/backup/CompanionBackupHelper;

    .line 187
    .line 188
    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 189
    .line 190
    invoke-direct {p1, p2}, Lcom/android/server/backup/CompanionBackupHelper;-><init>(I)V

    .line 191
    .line 192
    .line 193
    const-string/jumbo p2, "companion"

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 197
    .line 198
    .line 199
    new-instance p1, Lcom/android/server/backup/SystemGrammaticalGenderBackupHelper;

    .line 200
    .line 201
    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 202
    .line 203
    invoke-direct {p1, p2}, Lcom/android/server/backup/SystemGrammaticalGenderBackupHelper;-><init>(I)V

    .line 204
    .line 205
    .line 206
    const-string/jumbo p2, "system_gender"

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 210
    .line 211
    .line 212
    return-void
.end method

.method public final onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/backup/WallpaperBackupHelper;

    .line 2
    .line 3
    const-string v1, "/data/data/com.android.settings/files/wallpaper"

    .line 4
    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, p0, v2}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v2, "wallpaper"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v2, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroid/app/backup/WallpaperBackupHelper;

    .line 19
    .line 20
    filled-new-array {v1}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, p0, v1}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string/jumbo v1, "system_files"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 31
    .line 32
    .line 33
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 17

    .line 1
    move-object/from16 v0, p5

    .line 2
    .line 3
    move-object/from16 v1, p6

    .line 4
    .line 5
    const-string v2, "Couldn\'t restore settings\n"

    .line 6
    .line 7
    const-string v3, "Skipping unrecognized system file: [ "

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v5, "Restoring file domain="

    .line 12
    .line 13
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v5, " path="

    .line 20
    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const-string v5, "SystemBackupAgent"

    .line 32
    .line 33
    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    const-string/jumbo v4, "r"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    const-string/jumbo v6, "wallpaper"

    .line 44
    .line 45
    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    const-string/jumbo v4, "wallpaper_info.xml"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    const/4 v7, 0x1

    .line 56
    if-eqz v4, :cond_0

    .line 57
    .line 58
    new-instance v4, Ljava/io/File;

    .line 59
    .line 60
    sget-object v8, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    .line 61
    .line 62
    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    move-object/from16 v16, v4

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_0
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_1

    .line 73
    .line 74
    new-instance v4, Ljava/io/File;

    .line 75
    .line 76
    sget-object v8, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    .line 77
    .line 78
    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    const/4 v7, 0x0

    .line 83
    const/4 v4, 0x0

    .line 84
    goto :goto_0

    .line 85
    :goto_1
    if-nez v16, :cond_2

    .line 86
    .line 87
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v0, " : "

    .line 96
    .line 97
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v0, " ]"

    .line 104
    .line 105
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    :cond_2
    move-object/from16 v8, p1

    .line 116
    .line 117
    move-wide/from16 v9, p2

    .line 118
    .line 119
    move/from16 v11, p4

    .line 120
    .line 121
    move-wide/from16 v12, p7

    .line 122
    .line 123
    move-wide/from16 v14, p9

    .line 124
    .line 125
    invoke-static/range {v8 .. v16}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    .line 126
    .line 127
    .line 128
    if-eqz v7, :cond_3

    .line 129
    .line 130
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Landroid/app/IWallpaperManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    .line 136
    if-eqz v0, :cond_3

    .line 137
    .line 138
    :try_start_1
    invoke-interface {v0}, Landroid/app/IWallpaperManager;->settingsRestored()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :catch_0
    move-exception v0

    .line 143
    move-object v1, v0

    .line 144
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :catch_1
    if-eqz v7, :cond_3

    .line 161
    .line 162
    new-instance v0, Ljava/io/File;

    .line 163
    .line 164
    sget-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    .line 165
    .line 166
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 170
    .line 171
    .line 172
    new-instance v0, Ljava/io/File;

    .line 173
    .line 174
    sget-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    .line 175
    .line 176
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 180
    .line 181
    .line 182
    :cond_3
    :goto_2
    return-void
.end method
