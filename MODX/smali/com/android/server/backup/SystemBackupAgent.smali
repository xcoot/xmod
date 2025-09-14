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

    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 9
    new-instance v1, Ljava/io/File;

    .line 11
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 14
    move-result-object v2

    .line 15
    const-string/jumbo v3, "wallpaper"

    .line 18
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    sput-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    .line 27
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 34
    new-instance v1, Ljava/io/File;

    .line 36
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 39
    move-result-object v0

    .line 40
    const-string/jumbo v2, "wallpaper_info.xml"

    .line 43
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    .line 52
    const-string v4, "app_locales"

    .line 54
    const-string/jumbo v5, "companion"

    .line 57
    const-string/jumbo v1, "permissions"

    .line 60
    const-string/jumbo v2, "notifications"

    .line 63
    const-string v3, "account_sync_settings"

    .line 65
    const-string v6, "app_gender"

    .line 67
    const-string/jumbo v7, "system_gender"

    .line 70
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    .line 77
    move-result-object v0

    .line 78
    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->sEligibleHelpersForProfileUser:Ljava/util/Set;

    .line 80
    const-string v1, "account_manager"

    .line 82
    const-string/jumbo v2, "usage_stats"

    .line 85
    const-string/jumbo v3, "preferred_activities"

    .line 88
    const-string/jumbo v4, "shortcut_manager"

    .line 91
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    .line 94
    move-result-object v1

    .line 95
    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    .line 98
    move-result-object v1

    .line 99
    new-instance v2, Ljava/util/HashSet;

    .line 101
    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 104
    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 107
    sput-object v2, Lcom/android/server/backup/SystemBackupAgent;->sEligibleHelpersForNonSystemUser:Ljava/util/Set;

    .line 109
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 7
    iput-boolean v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mIsProfileUser:Z

    .line 9
    return-void
.end method


# virtual methods
.method public final addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mIsProfileUser:Z

    .line 9
    if-eqz v0, :cond_1

    .line 11
    sget-object v0, Lcom/android/server/backup/SystemBackupAgent;->sEligibleHelpersForProfileUser:Ljava/util/Set;

    .line 13
    check-cast v0, Landroid/util/ArraySet;

    .line 15
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    sget-object v0, Lcom/android/server/backup/SystemBackupAgent;->sEligibleHelpersForNonSystemUser:Ljava/util/Set;

    .line 22
    check-cast v0, Ljava/util/HashSet;

    .line 24
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 28
    :goto_0
    if-eqz v0, :cond_2

    .line 30
    invoke-virtual {p0, p1, p2}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 33
    invoke-static {}, Lcom/android/server/backup/Flags;->enableMetricsSystemBackupAgents()Z

    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 39
    iget-object p0, p0, Lcom/android/server/backup/SystemBackupAgent;->mLogger:Landroid/app/backup/BackupRestoreEventLogger;

    .line 41
    invoke-virtual {p2, p0}, Landroid/app/backup/BackupHelperWithLogger;->setLogger(Landroid/app/backup/BackupRestoreEventLogger;)V

    .line 44
    :cond_2
    return-void
.end method

.method public final onCreate(Landroid/os/UserHandle;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/backup/BackupAgentHelper;->onCreate(Landroid/os/UserHandle;I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/backup/BackupAgentHelper;->getBackupRestoreEventLogger()Landroid/app/backup/BackupRestoreEventLogger;

    .line 7
    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mLogger:Landroid/app/backup/BackupRestoreEventLogger;

    .line 10
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 13
    move-result p2

    .line 14
    iput p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 16
    if-eqz p2, :cond_0

    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-virtual {p0, p1, p2}, Landroid/app/backup/BackupAgentHelper;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 22
    move-result-object p1

    .line 23
    const-class p2, Landroid/os/UserManager;

    .line 25
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/os/UserManager;

    .line 31
    invoke-virtual {p1}, Landroid/os/UserManager;->isProfile()Z

    .line 34
    move-result p1

    .line 35
    iput-boolean p1, p0, Lcom/android/server/backup/SystemBackupAgent;->mIsProfileUser:Z

    .line 37
    :cond_0
    new-instance p1, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;

    .line 39
    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 41
    invoke-direct {p1, p0, p2}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;-><init>(Landroid/content/Context;I)V

    .line 44
    const-string p2, "account_sync_settings"

    .line 46
    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 49
    new-instance p1, Lcom/android/server/backup/PreferredActivityBackupHelper;

    .line 51
    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 53
    invoke-direct {p1, p2}, Lcom/android/server/backup/PreferredActivityBackupHelper;-><init>(I)V

    .line 56
    const-string/jumbo p2, "preferred_activities"

    .line 59
    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 62
    new-instance p1, Lcom/android/server/backup/NotificationBackupHelper;

    .line 64
    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 66
    invoke-direct {p1, p2}, Lcom/android/server/backup/NotificationBackupHelper;-><init>(I)V

    .line 69
    const-string/jumbo p2, "notifications"

    .line 72
    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 75
    new-instance p1, Lcom/android/server/backup/PermissionBackupHelper;

    .line 77
    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 79
    invoke-direct {p1, p2}, Lcom/android/server/backup/PermissionBackupHelper;-><init>(I)V

    .line 82
    const-string/jumbo p2, "permissions"

    .line 85
    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 88
    new-instance p1, Lcom/android/server/backup/UsageStatsBackupHelper;

    .line 90
    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 92
    invoke-direct {p1, p2}, Lcom/android/server/backup/UsageStatsBackupHelper;-><init>(I)V

    .line 95
    const-string/jumbo p2, "usage_stats"

    .line 98
    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 101
    new-instance p1, Lcom/android/server/backup/ShortcutBackupHelper;

    .line 103
    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 105
    invoke-direct {p1, p2}, Lcom/android/server/backup/ShortcutBackupHelper;-><init>(I)V

    .line 108
    const-string/jumbo p2, "shortcut_manager"

    .line 111
    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 114
    new-instance p1, Lcom/android/server/backup/AccountManagerBackupHelper;

    .line 116
    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 118
    invoke-direct {p1, p2}, Lcom/android/server/backup/AccountManagerBackupHelper;-><init>(I)V

    .line 121
    const-string p2, "account_manager"

    .line 123
    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 126
    invoke-virtual {p0}, Landroid/app/backup/BackupAgentHelper;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 129
    move-result-object p1

    .line 130
    const-string p2, "android.software.slices_disabled"

    .line 132
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 135
    move-result p1

    .line 136
    if-nez p1, :cond_1

    .line 138
    new-instance p1, Lcom/android/server/backup/SliceBackupHelper;

    .line 140
    invoke-direct {p1, p0}, Lcom/android/server/backup/SliceBackupHelper;-><init>(Landroid/content/Context;)V

    .line 143
    const-string/jumbo p2, "slices"

    .line 146
    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 149
    :cond_1
    new-instance p1, Lcom/android/server/backup/PeopleBackupHelper;

    .line 151
    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 153
    invoke-direct {p1, p2}, Lcom/android/server/backup/PeopleBackupHelper;-><init>(I)V

    .line 156
    const-string/jumbo p2, "people"

    .line 159
    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 162
    new-instance p1, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;

    .line 164
    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 166
    invoke-direct {p1, p2}, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;-><init>(I)V

    .line 169
    const-string p2, "app_locales"

    .line 171
    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 174
    new-instance p1, Lcom/android/server/backup/AppGrammaticalGenderBackupHelper;

    .line 176
    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 178
    invoke-direct {p1, p2}, Lcom/android/server/backup/AppGrammaticalGenderBackupHelper;-><init>(I)V

    .line 181
    const-string p2, "app_gender"

    .line 183
    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 186
    new-instance p1, Lcom/android/server/backup/CompanionBackupHelper;

    .line 188
    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 190
    invoke-direct {p1, p2}, Lcom/android/server/backup/CompanionBackupHelper;-><init>(I)V

    .line 193
    const-string/jumbo p2, "companion"

    .line 196
    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 199
    new-instance p1, Lcom/android/server/backup/SystemGrammaticalGenderBackupHelper;

    .line 201
    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 203
    invoke-direct {p1, p2}, Lcom/android/server/backup/SystemGrammaticalGenderBackupHelper;-><init>(I)V

    .line 206
    const-string/jumbo p2, "system_gender"

    .line 209
    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

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

    .line 3
    const-string v1, "/data/data/com.android.settings/files/wallpaper"

    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, p0, v2}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 12
    const-string/jumbo v2, "wallpaper"

    .line 15
    invoke-virtual {p0, v2, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 18
    new-instance v0, Landroid/app/backup/WallpaperBackupHelper;

    .line 20
    filled-new-array {v1}, [Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, p0, v1}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 27
    const-string/jumbo v1, "system_files"

    .line 30
    invoke-virtual {p0, v1, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 33
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    .line 36
    return-void
.end method

.method public final onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 17

    .line 1
    move-object/from16 v0, p5

    .line 3
    move-object/from16 v1, p6

    .line 5
    const-string v2, "Couldn\'t restore settings\n"

    .line 7
    const-string v3, "Skipping unrecognized system file: [ "

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 11
    const-string v5, "Restoring file domain="

    .line 13
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v5, " path="

    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v4

    .line 31
    const-string v5, "SystemBackupAgent"

    .line 33
    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string/jumbo v4, "r"

    .line 39
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v4

    .line 43
    const-string/jumbo v6, "wallpaper"

    .line 46
    if-eqz v4, :cond_1

    .line 48
    const-string/jumbo v4, "wallpaper_info.xml"

    .line 51
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v4

    .line 55
    const/4 v7, 0x1

    .line 56
    if-eqz v4, :cond_0

    .line 58
    new-instance v4, Ljava/io/File;

    .line 60
    sget-object v8, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    .line 62
    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    :goto_0
    move-object/from16 v16, v4

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_1

    .line 74
    new-instance v4, Ljava/io/File;

    .line 76
    sget-object v8, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    .line 78
    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

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

    .line 87
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 89
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v0, " : "

    .line 97
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v0, " ]"

    .line 105
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_2
    move-object/from16 v8, p1

    .line 117
    move-wide/from16 v9, p2

    .line 119
    move/from16 v11, p4

    .line 121
    move-wide/from16 v12, p7

    .line 123
    move-wide/from16 v14, p9

    .line 125
    invoke-static/range {v8 .. v16}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    .line 128
    if-eqz v7, :cond_3

    .line 130
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Landroid/app/IWallpaperManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    if-eqz v0, :cond_3

    .line 138
    :try_start_1
    invoke-interface {v0}, Landroid/app/IWallpaperManager;->settingsRestored()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

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

    .line 146
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    move-result-object v0

    .line 156
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 159
    goto :goto_2

    .line 160
    :catch_1
    if-eqz v7, :cond_3

    .line 162
    new-instance v0, Ljava/io/File;

    .line 164
    sget-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    .line 166
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 172
    new-instance v0, Ljava/io/File;

    .line 174
    sget-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    .line 176
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 182
    :cond_3
    :goto_2
    return-void
.end method
