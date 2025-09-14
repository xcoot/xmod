.class public final Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/locales/LocaleManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/locales/LocaleManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;->this$0:Lcom/android/server/locales/LocaleManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final getBackupPayload(I)[B
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 7
    if-ne v0, v1, :cond_4

    .line 9
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;->this$0:Lcom/android/server/locales/LocaleManagerService;

    .line 11
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    .line 13
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedDataLock:Ljava/lang/Object;

    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->cleanStagedDataForOldEntriesLocked(I)V

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    new-instance v0, Ljava/util/HashMap;

    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 27
    const-wide/16 v2, 0x0

    .line 29
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Ljava/util/List;

    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v1

    .line 41
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 53
    :try_start_1
    iget-object v3, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mLocaleManagerService:Lcom/android/server/locales/LocaleManagerService;

    .line 55
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 57
    invoke-virtual {v3, v4, p1}, Lcom/android/server/locales/LocaleManagerService;->getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;

    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Landroid/os/LocaleList;->isEmpty()Z

    .line 64
    move-result v4

    .line 65
    if-nez v4, :cond_0

    .line 67
    iget-object v4, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mDelegateAppLocalePackages:Landroid/content/SharedPreferences;

    .line 69
    if-eqz v4, :cond_1

    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 74
    move-result-object v5

    .line 75
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 78
    move-result-object v6

    .line 79
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 82
    move-result-object v4

    .line 83
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 85
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 88
    move-result v4

    .line 89
    goto :goto_1

    .line 90
    :catch_0
    move-exception v3

    .line 91
    goto :goto_2

    .line 92
    :cond_1
    const/4 v4, 0x0

    .line 93
    :goto_1
    new-instance v5, Lcom/android/server/locales/LocaleManagerBackupHelper$LocalesInfo;

    .line 95
    invoke-virtual {v3}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    .line 98
    move-result-object v3

    .line 99
    invoke-direct {v5, v3, v4}, Lcom/android/server/locales/LocaleManagerBackupHelper$LocalesInfo;-><init>(Ljava/lang/String;Z)V

    .line 102
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 104
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    goto :goto_0

    .line 108
    :goto_2
    const-string v4, "LocaleManagerBkpHelper"

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    .line 112
    const-string v6, "Exception when getting locales for package: "

    .line 114
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 119
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v2

    .line 126
    invoke-static {v4, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 133
    move-result p0

    .line 134
    const/4 p1, 0x0

    .line 135
    if-eqz p0, :cond_3

    .line 137
    goto :goto_3

    .line 138
    :cond_3
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    .line 140
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 143
    :try_start_2
    invoke-static {p0, v0}, Lcom/android/server/locales/LocaleManagerBackupHelper;->writeToXml(Ljava/io/OutputStream;Ljava/util/HashMap;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 146
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 149
    move-result-object p1

    .line 150
    goto :goto_3

    .line 151
    :catch_1
    move-exception p0

    .line 152
    const-string v0, "LocaleManagerBkpHelper"

    .line 154
    const-string v1, "Could not write to xml for backup "

    .line 156
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    :goto_3
    return-object p1

    .line 160
    :catchall_0
    move-exception p0

    .line 161
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 162
    throw p0

    .line 163
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 165
    const-string p1, "Caller is not system."

    .line 167
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 170
    throw p0
.end method

.method public final stageAndApplyRestoredPayload(I[B)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;->this$0:Lcom/android/server/locales/LocaleManagerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    if-nez p2, :cond_0

    .line 10
    const-string p0, "LocaleManagerBkpHelper"

    .line 12
    const-string/jumbo p2, "stageAndApplyRestoredPayload: no payload to restore for user "

    .line 15
    invoke-static {p1, p2, p0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    goto/16 :goto_3

    .line 20
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 22
    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 25
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    .line 28
    move-result-object p2

    .line 29
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 31
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 38
    const-string/jumbo v0, "locales"

    .line 41
    invoke-static {p2, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 44
    invoke-static {p2}, Lcom/android/server/locales/LocaleManagerBackupHelper;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/HashMap;

    .line 47
    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedDataLock:Ljava/lang/Object;

    .line 50
    monitor-enter v0

    .line 51
    :try_start_1
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 54
    move-result-object v1

    .line 55
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object v1

    .line 59
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_2

    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Ljava/lang/String;

    .line 71
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Lcom/android/server/locales/LocaleManagerBackupHelper$LocalesInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :try_start_2
    iget-object v4, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 82
    move-result-object v4

    .line 83
    const/4 v5, 0x0

    .line 84
    invoke-virtual {v4, v2, v5, p1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 87
    move-result-object v4
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    goto :goto_1

    .line 89
    :catch_0
    const/4 v4, 0x0

    .line 90
    :goto_1
    if-eqz v4, :cond_1

    .line 92
    :try_start_3
    invoke-virtual {p0, p1, v2}, Lcom/android/server/locales/LocaleManagerBackupHelper;->removeFromArchivedPackagesInfo(ILjava/lang/String;)V

    .line 95
    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/locales/LocaleManagerBackupHelper;->checkExistingLocalesAndApplyRestore(ILcom/android/server/locales/LocaleManagerBackupHelper$LocalesInfo;Ljava/lang/String;)V

    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    goto :goto_2

    .line 101
    :cond_1
    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/locales/LocaleManagerBackupHelper;->storeStagedDataInfo(ILcom/android/server/locales/LocaleManagerBackupHelper$LocalesInfo;Ljava/lang/String;)V

    .line 104
    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->getStagedDataSp(I)Landroid/content/SharedPreferences;

    .line 108
    move-result-object p2

    .line 109
    invoke-interface {p2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 112
    move-result-object p2

    .line 113
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    .line 116
    move-result p2

    .line 117
    if-nez p2, :cond_3

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->getStagedDataSp(I)Landroid/content/SharedPreferences;

    .line 122
    move-result-object p1

    .line 123
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 126
    move-result-object p1

    .line 127
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mClock:Ljava/time/Clock;

    .line 129
    invoke-virtual {p0}, Ljava/time/Clock;->millis()J

    .line 132
    move-result-wide v1

    .line 133
    const-string/jumbo p0, "staged_data_time"

    .line 136
    invoke-interface {p1, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 139
    move-result-object p0

    .line 140
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    move-result p0

    .line 144
    if-nez p0, :cond_3

    .line 146
    const-string p0, "LocaleManagerBkpHelper"

    .line 148
    const-string p1, "Failed to commit data!"

    .line 150
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_3
    monitor-exit v0

    .line 154
    goto :goto_3

    .line 155
    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    throw p0

    .line 157
    :catch_1
    move-exception p0

    .line 158
    const-string p1, "LocaleManagerBkpHelper"

    .line 160
    const-string p2, "Could not parse payload "

    .line 162
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    :goto_3
    return-void
.end method
