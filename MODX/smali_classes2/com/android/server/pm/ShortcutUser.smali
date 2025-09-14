.class public final Lcom/android/server/pm/ShortcutUser;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

.field public mCachedLauncher:Ljava/lang/String;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mInFlightSessions:Ljava/util/ArrayList;

.field public mKnownLocales:Ljava/lang/String;

.field public mLastAppScanOsFingerprint:Ljava/lang/String;

.field public mLastAppScanTime:J

.field public final mLaunchers:Landroid/util/ArrayMap;

.field public final mLock:Ljava/lang/Object;

.field public final mPackages:Landroid/util/ArrayMap;

.field public mRestoreFromOsFingerprint:Ljava/lang/String;

.field public final mService:Lcom/android/server/pm/ShortcutService;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mInFlightSessions:Ljava/util/ArrayList;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 33
    .line 34
    iput p2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 35
    .line 36
    iget-object p1, p1, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-class p2, Landroid/app/appsearch/AppSearchManager;

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Landroid/app/appsearch/AppSearchManager;

    .line 54
    .line 55
    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

    .line 56
    .line 57
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mExecutor:Ljava/util/concurrent/Executor;

    .line 62
    .line 63
    return-void
.end method

.method public static forMainFilesIn(Ljava/io/File;Ljava/util/function/Consumer;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    array-length v0, p0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_2

    .line 15
    .line 16
    aget-object v2, p0, v1

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const-string v4, ".reservecopy"

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string v4, ".backup"

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    return-void
.end method


# virtual methods
.method public final cancelAllInFlightTasks()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mInFlightSessions:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-virtual {v2, v3}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mInFlightSessions:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 32
    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method

.method public final detectLocaleChange(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iput-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    .line 34
    .line 35
    new-instance p1, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-direct {p1, v1}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;-><init>(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 42
    .line 43
    .line 44
    iget p0, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Lcom/android/server/pm/ShortcutService$DumpFilter;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "  "

    .line 3
    .line 4
    iget-boolean v2, p2, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpDetails:Z

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "User: "

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 19
    .line 20
    .line 21
    const-string v1, "  Known locales: "

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v1, "  Last app scan: ["

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-wide v1, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    .line 37
    .line 38
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 39
    .line 40
    .line 41
    const-string v1, "] "

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-wide v1, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    .line 47
    .line 48
    sget-boolean v3, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 49
    .line 50
    invoke-static {v1, v2}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v1, "      "

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string v2, "Last app scan FP: "

    .line 63
    .line 64
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    .line 68
    .line 69
    const-string v3, "Restore from FP: "

    .line 70
    .line 71
    invoke-static {p1, v2, v1, v3}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v2, "Cached launcher: "

    .line 86
    .line 87
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mCachedLauncher:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 96
    .line 97
    .line 98
    :cond_0
    const/4 v2, 0x0

    .line 99
    move v3, v2

    .line 100
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    .line 101
    .line 102
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-ge v3, v4, :cond_3

    .line 107
    .line 108
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    .line 109
    .line 110
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    check-cast v4, Lcom/android/server/pm/ShortcutLauncher;

    .line 115
    .line 116
    iget-object v5, v4, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {p2, v5}, Lcom/android/server/pm/ShortcutService$DumpFilter;->isPackageMatch(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-eqz v5, :cond_2

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string v5, "Launcher: "

    .line 131
    .line 132
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object v5, v4, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const-string v5, "  Package user: "

    .line 141
    .line 142
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget v5, v4, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    .line 146
    .line 147
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 148
    .line 149
    .line 150
    const-string v5, "  Owner user: "

    .line 151
    .line 152
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget v5, v4, Lcom/android/server/pm/ShortcutLauncher;->mOwnerUserId:I

    .line 156
    .line 157
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 161
    .line 162
    .line 163
    iget-object v5, v4, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    .line 164
    .line 165
    new-instance v6, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v7, "  "

    .line 174
    .line 175
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    invoke-virtual {v5, p1, v6}, Lcom/android/server/pm/ShortcutPackageInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 186
    .line 187
    .line 188
    iget-object v5, v4, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 189
    .line 190
    monitor-enter v5

    .line 191
    :try_start_0
    new-instance v6, Landroid/util/ArrayMap;

    .line 192
    .line 193
    iget-object v4, v4, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    .line 194
    .line 195
    invoke-direct {v6, v4}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 196
    .line 197
    .line 198
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    move v5, v2

    .line 204
    :goto_1
    if-ge v5, v4, :cond_2

    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v7

    .line 213
    check-cast v7, Landroid/content/pm/UserPackage;

    .line 214
    .line 215
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    const-string v8, "  "

    .line 219
    .line 220
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    const-string v8, "Package: "

    .line 224
    .line 225
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    iget-object v8, v7, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 229
    .line 230
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    const-string v8, "  User: "

    .line 234
    .line 235
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    iget v7, v7, Landroid/content/pm/UserPackage;->userId:I

    .line 239
    .line 240
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v7

    .line 247
    check-cast v7, Landroid/util/ArraySet;

    .line 248
    .line 249
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    .line 250
    .line 251
    .line 252
    move-result v8

    .line 253
    move v9, v2

    .line 254
    :goto_2
    if-ge v9, v8, :cond_1

    .line 255
    .line 256
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    const-string v10, "    Pinned: "

    .line 260
    .line 261
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v10

    .line 268
    check-cast v10, Ljava/lang/String;

    .line 269
    .line 270
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 274
    .line 275
    .line 276
    add-int/2addr v9, v0

    .line 277
    goto :goto_2

    .line 278
    :cond_1
    add-int/2addr v5, v0

    .line 279
    goto :goto_1

    .line 280
    :catchall_0
    move-exception p0

    .line 281
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    throw p0

    .line 283
    :cond_2
    add-int/2addr v3, v0

    .line 284
    goto/16 :goto_0

    .line 285
    .line 286
    :cond_3
    move v3, v2

    .line 287
    :goto_3
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    .line 288
    .line 289
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 290
    .line 291
    .line 292
    move-result v4

    .line 293
    if-ge v3, v4, :cond_5

    .line 294
    .line 295
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    .line 296
    .line 297
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    check-cast v4, Lcom/android/server/pm/ShortcutPackage;

    .line 302
    .line 303
    iget-object v5, v4, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 304
    .line 305
    invoke-virtual {p2, v5}, Lcom/android/server/pm/ShortcutService$DumpFilter;->isPackageMatch(Ljava/lang/String;)Z

    .line 306
    .line 307
    .line 308
    move-result v5

    .line 309
    if-eqz v5, :cond_4

    .line 310
    .line 311
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    const-string v5, "Package: "

    .line 318
    .line 319
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    iget-object v5, v4, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 323
    .line 324
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    const-string v5, "  UID: "

    .line 328
    .line 329
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    iget v5, v4, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    .line 333
    .line 334
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    const-string v5, "  "

    .line 344
    .line 345
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    const-string v5, "Calls: "

    .line 349
    .line 350
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v4, v2}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount(Z)I

    .line 354
    .line 355
    .line 356
    move-result v5

    .line 357
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    const-string v5, "  "

    .line 367
    .line 368
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    const-string v5, "Last known FG: "

    .line 372
    .line 373
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    iget-wide v5, v4, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    .line 377
    .line 378
    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 382
    .line 383
    .line 384
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    const-string v5, "  "

    .line 388
    .line 389
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    const-string v5, "Last reset: ["

    .line 393
    .line 394
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    iget-wide v5, v4, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 398
    .line 399
    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 400
    .line 401
    .line 402
    const-string v5, "] "

    .line 403
    .line 404
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    iget-wide v5, v4, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 408
    .line 409
    invoke-static {v5, v6}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v5

    .line 413
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 417
    .line 418
    .line 419
    iget-object v5, v4, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    .line 420
    .line 421
    new-instance v6, Ljava/lang/StringBuilder;

    .line 422
    .line 423
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    const-string v7, "  "

    .line 430
    .line 431
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v6

    .line 438
    invoke-virtual {v5, p1, v6}, Lcom/android/server/pm/ShortcutPackageInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 442
    .line 443
    .line 444
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    const-string v5, "  Shortcuts:"

    .line 448
    .line 449
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    new-array v5, v0, [J

    .line 453
    .line 454
    new-instance v6, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;

    .line 455
    .line 456
    invoke-direct {v6, p1, v1, v5, v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v4, v6}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    const-string v6, "  "

    .line 466
    .line 467
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    const-string v6, "Total bitmap size: "

    .line 471
    .line 472
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    aget-wide v6, v5, v2

    .line 476
    .line 477
    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 478
    .line 479
    .line 480
    const-string v6, " ("

    .line 481
    .line 482
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    iget-object v6, v4, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 486
    .line 487
    iget-object v6, v6, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 488
    .line 489
    iget-object v6, v6, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 490
    .line 491
    aget-wide v7, v5, v2

    .line 492
    .line 493
    invoke-static {v6, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v5

    .line 497
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    const-string v5, ")"

    .line 501
    .line 502
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 506
    .line 507
    .line 508
    iget-object v5, v4, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 509
    .line 510
    monitor-enter v5

    .line 511
    :try_start_2
    iget-object v4, v4, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    .line 512
    .line 513
    invoke-virtual {v4, p1}, Lcom/android/server/pm/ShortcutBitmapSaver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 514
    .line 515
    .line 516
    monitor-exit v5

    .line 517
    goto :goto_4

    .line 518
    :catchall_1
    move-exception p0

    .line 519
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 520
    throw p0

    .line 521
    :cond_4
    :goto_4
    add-int/2addr v3, v0

    .line 522
    goto/16 :goto_3

    .line 523
    .line 524
    :cond_5
    iget-boolean p2, p2, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpDetails:Z

    .line 525
    .line 526
    if-eqz p2, :cond_6

    .line 527
    .line 528
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 529
    .line 530
    .line 531
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    const-string p2, "Bitmap directories: "

    .line 535
    .line 536
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    new-instance p2, Ljava/lang/StringBuilder;

    .line 540
    .line 541
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 542
    .line 543
    .line 544
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    const-string v0, "  "

    .line 548
    .line 549
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object p2

    .line 556
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 557
    .line 558
    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 559
    .line 560
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutUser;->dumpDirectorySize(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/io/File;)V

    .line 565
    .line 566
    .line 567
    :cond_6
    return-void
.end method

.method public final dumpCheckin(Z)Lorg/json/JSONObject;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v2, "userId"

    .line 9
    .line 10
    .line 11
    iget v3, v0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 12
    .line 13
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    new-instance v2, Lorg/json/JSONArray;

    .line 17
    .line 18
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    move v4, v3

    .line 23
    :goto_0
    iget-object v5, v0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    .line 24
    .line 25
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-ge v4, v5, :cond_0

    .line 30
    .line 31
    iget-object v5, v0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Lcom/android/server/pm/ShortcutLauncher;

    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    new-instance v6, Lorg/json/JSONObject;

    .line 43
    .line 44
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string/jumbo v7, "name"

    .line 48
    .line 49
    .line 50
    iget-object v5, v5, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 56
    .line 57
    .line 58
    add-int/lit8 v4, v4, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const-string v4, "launchers"

    .line 62
    .line 63
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    new-instance v2, Lorg/json/JSONArray;

    .line 67
    .line 68
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 69
    .line 70
    .line 71
    :goto_1
    iget-object v4, v0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    .line 72
    .line 73
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-ge v3, v4, :cond_1

    .line 78
    .line 79
    iget-object v4, v0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    .line 80
    .line 81
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    check-cast v4, Lcom/android/server/pm/ShortcutPackage;

    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    new-instance v5, Lorg/json/JSONObject;

    .line 91
    .line 92
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string/jumbo v6, "name"

    .line 96
    .line 97
    .line 98
    iget-object v7, v4, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    .line 102
    .line 103
    const/4 v6, 0x1

    .line 104
    new-array v13, v6, [I

    .line 105
    .line 106
    new-array v14, v6, [I

    .line 107
    .line 108
    new-array v15, v6, [I

    .line 109
    .line 110
    new-array v12, v6, [I

    .line 111
    .line 112
    new-array v6, v6, [J

    .line 113
    .line 114
    new-instance v11, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda19;

    .line 115
    .line 116
    move-object v7, v11

    .line 117
    move-object v8, v13

    .line 118
    move-object v9, v15

    .line 119
    move-object v10, v14

    .line 120
    move-object v0, v11

    .line 121
    move-object v11, v12

    .line 122
    move-object/from16 v16, v12

    .line 123
    .line 124
    move-object v12, v6

    .line 125
    invoke-direct/range {v7 .. v12}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda19;-><init>([I[I[I[I[J)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4, v0}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    .line 129
    .line 130
    .line 131
    const/4 v0, 0x0

    .line 132
    aget v4, v13, v0

    .line 133
    .line 134
    const-string v7, "dynamic"

    .line 135
    .line 136
    invoke-virtual {v5, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 137
    .line 138
    .line 139
    const-string/jumbo v4, "manifest"

    .line 140
    .line 141
    .line 142
    aget v7, v15, v0

    .line 143
    .line 144
    invoke-virtual {v5, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 145
    .line 146
    .line 147
    const-string/jumbo v4, "pinned"

    .line 148
    .line 149
    .line 150
    aget v7, v14, v0

    .line 151
    .line 152
    invoke-virtual {v5, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 153
    .line 154
    .line 155
    const-string v4, "bitmaps"

    .line 156
    .line 157
    aget v7, v16, v0

    .line 158
    .line 159
    invoke-virtual {v5, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 160
    .line 161
    .line 162
    const-string v4, "bitmapBytes"

    .line 163
    .line 164
    aget-wide v6, v6, v0

    .line 165
    .line 166
    invoke-virtual {v5, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 170
    .line 171
    .line 172
    add-int/lit8 v3, v3, 0x1

    .line 173
    .line 174
    move-object/from16 v0, p0

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_1
    const-string/jumbo v0, "packages"

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    .line 182
    .line 183
    return-object v1
.end method

.method public final dumpDirectorySize(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/io/File;)V
    .locals 9

    .line 1
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    array-length v4, v0

    .line 15
    move-wide v5, v2

    .line 16
    move v2, v1

    .line 17
    :goto_0
    if-ge v1, v4, :cond_2

    .line 18
    .line 19
    aget-object v3, v0, v1

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    if-eqz v7, :cond_0

    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 30
    .line 31
    .line 32
    move-result-wide v7

    .line 33
    add-long/2addr v7, v5

    .line 34
    move-wide v5, v7

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-eqz v7, :cond_1

    .line 41
    .line 42
    new-instance v7, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v8, "  "

    .line 51
    .line 52
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {p0, p1, v7, v3}, Lcom/android/server/pm/ShortcutUser;->dumpDirectorySize(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/io/File;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    move v1, v2

    .line 66
    move-wide v2, v5

    .line 67
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string p2, "Path: "

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string p2, "/ has "

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 88
    .line 89
    .line 90
    const-string p2, " files, size="

    .line 91
    .line 92
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 96
    .line 97
    .line 98
    const-string p2, " ("

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 104
    .line 105
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 106
    .line 107
    invoke-static {p0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string p0, ")"

    .line 115
    .line 116
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public final forAllLaunchers(Ljava/util/function/Consumer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public final forAllPackageItems(Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final forAllPackages(Ljava/util/function/Consumer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public getAllLaunchersForTest()Landroid/util/ArrayMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public getAllPackagesForTest()Landroid/util/ArrayMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAppSearch(Landroid/app/appsearch/AppSearchManager$SearchContext;)Lcom/android/internal/infra/AndroidFuture;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mInFlightSessions:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v3, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda7;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mInFlightSessions:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    new-instance p0, Ljava/lang/RuntimeException;

    .line 30
    .line 31
    const-string p1, "app search manager is null"

    .line 32
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 43
    .line 44
    iget v2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    new-instance p1, Ljava/lang/RuntimeException;

    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v2, "User "

    .line 57
    .line 58
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget p0, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 62
    .line 63
    const-string v2, " is "

    .line 64
    .line 65
    invoke-static {p0, v1, v2}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 73
    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 77
    .line 78
    .line 79
    move-result-wide v1

    .line 80
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mExecutor:Ljava/util/concurrent/Executor;

    .line 83
    .line 84
    new-instance v4, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda8;

    .line 85
    .line 86
    invoke-direct {v4, v0}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, p1, p0, v4}, Landroid/app/appsearch/AppSearchManager;->createSearchSession(Landroid/app/appsearch/AppSearchManager$SearchContext;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .line 91
    .line 92
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    .line 94
    .line 95
    return-object v0

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    .line 99
    .line 100
    throw p0

    .line 101
    :catchall_1
    move-exception p0

    .line 102
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    throw p0
.end method

.method public final getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/pm/ShortcutPackage;

    .line 8
    .line 9
    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 10
    .line 11
    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-object v0
.end method

.method public final getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/pm/ShortcutPackage;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-object p0
.end method

.method public final mergeRestoredFile(Lcom/android/server/pm/ShortcutUser;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    new-array v2, v0, [I

    .line 5
    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 11
    .line 12
    .line 13
    new-instance v3, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda3;

    .line 14
    .line 15
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 16
    .line 17
    invoke-direct {v3, p0, v4, v1}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/ShortcutUser;Lcom/android/server/pm/ShortcutService;[I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda4;

    .line 24
    .line 25
    invoke-direct {v3, p0, v4, v2, v0}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/ShortcutUser;Lcom/android/server/pm/ShortcutService;[I[I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 29
    .line 30
    .line 31
    iget-object v3, p1, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 34
    .line 35
    .line 36
    iget-object v3, p1, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p1, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    .line 44
    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string p1, "Restored: L="

    .line 48
    .line 49
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    aget v1, v1, p1

    .line 54
    .line 55
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, " P="

    .line 59
    .line 60
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    aget v1, v2, p1

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, " S="

    .line 69
    .line 70
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    aget p1, v0, p1

    .line 74
    .line 75
    const-string v0, "ShortcutService"

    .line 76
    .line 77
    invoke-static {p0, p1, v0}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final rescanPackageIfNeeded(Ljava/lang/String;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    sget-boolean v1, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v2, "rescanPackageIfNeeded "

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget v2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 22
    .line 23
    const-string v3, "@"

    .line 24
    .line 25
    const-string v4, ", forceRescan="

    .line 26
    .line 27
    invoke-static {v2, v3, p1, v4, v1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, " , isNewApp="

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "ShortcutService"

    .line 46
    .line 47
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1, v0, p2}, Lcom/android/server/pm/ShortcutPackage;->rescanPackageIfNeeded(ZZ)Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-nez p2, :cond_1

    .line 59
    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackageItem;->removeShortcutPackageItem()V

    .line 68
    .line 69
    .line 70
    :cond_1
    return-void
.end method
