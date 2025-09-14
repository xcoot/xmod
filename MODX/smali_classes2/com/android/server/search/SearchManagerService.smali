.class public final Lcom/android/server/search/SearchManagerService;
.super Landroid/app/ISearchManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSearchables:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/app/ISearchManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    new-instance v0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;-><init>(Lcom/android/server/search/SearchManagerService;)V

    .line 16
    .line 17
    .line 18
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, p0, p1}, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;-><init>(Lcom/android/server/search/SearchManagerService;Landroid/content/ContentResolver;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 35
    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string p3, "SearchManagerService"

    .line 4
    .line 5
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    .line 13
    .line 14
    const-string p3, "  "

    .line 15
    .line 16
    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    .line 20
    .line 21
    monitor-enter p2

    .line 22
    const/4 p3, 0x0

    .line 23
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-ge p3, v0, :cond_1

    .line 30
    .line 31
    const-string v0, "\nUser: "

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    .line 49
    .line 50
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/android/server/search/Searchables;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lcom/android/server/search/Searchables;->dump(Ljava/io/PrintWriter;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 60
    .line 61
    .line 62
    add-int/lit8 p3, p3, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    monitor-exit p2

    .line 68
    return-void

    .line 69
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p0
.end method

.method public final getGlobalSearchActivities()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mGlobalSearchActivities:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/android/server/search/Searchables;->createFilterdResolveInfoList(Ljava/util/List;)Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    monitor-exit p0

    .line 20
    throw v0
.end method

.method public final getGlobalSearchActivity()Landroid/content/ComponentName;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iget-object v3, p0, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManagerInternal;->canAccessComponent(IILandroid/content/ComponentName;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    monitor-exit p0

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    monitor-exit p0

    .line 43
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    .line 45
    :goto_1
    monitor-exit p0

    .line 46
    throw v0
.end method

.method public final getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    const-string p0, "SearchManagerService"

    .line 5
    .line 6
    const-string p1, "getSearchableInfo(), activity == null"

    .line 7
    .line 8
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0, v1}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    monitor-enter p0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/app/SearchableInfo;

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 38
    .line 39
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-virtual {p1, v2, v4, v3}, Landroid/content/pm/PackageManagerInternal;->canAccessComponent(IILandroid/content/ComponentName;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    monitor-exit p0

    .line 58
    :goto_0
    move-object v0, v1

    .line 59
    goto/16 :goto_5

    .line 60
    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto/16 :goto_6

    .line 63
    .line 64
    :cond_1
    monitor-exit p0

    .line 65
    goto/16 :goto_5

    .line 66
    .line 67
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :try_start_1
    iget-object v1, p0, Lcom/android/server/search/Searchables;->mPm:Landroid/content/pm/IPackageManager;

    .line 69
    .line 70
    iget v2, p0, Lcom/android/server/search/Searchables;->mUserId:I

    .line 71
    .line 72
    const-wide/16 v3, 0x80

    .line 73
    .line 74
    invoke-interface {v1, p1, v3, v4, v2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    .line 75
    .line 76
    .line 77
    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 78
    if-nez v1, :cond_3

    .line 79
    .line 80
    const-string p0, "Searchables"

    .line 81
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v2, "Error activity info is null:"

    .line 85
    .line 86
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    goto/16 :goto_5

    .line 100
    .line 101
    :cond_3
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 102
    .line 103
    if-eqz v2, :cond_4

    .line 104
    .line 105
    const-string v3, "android.app.default_searchable"

    .line 106
    .line 107
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    goto :goto_1

    .line 112
    :cond_4
    move-object v2, v0

    .line 113
    :goto_1
    if-nez v2, :cond_5

    .line 114
    .line 115
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 116
    .line 117
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 118
    .line 119
    if-eqz v1, :cond_5

    .line 120
    .line 121
    const-string v2, "android.app.default_searchable"

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    :cond_5
    if-eqz v2, :cond_9

    .line 128
    .line 129
    const-string v1, "*"

    .line 130
    .line 131
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_6

    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_6
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    const/4 v3, 0x0

    .line 143
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    const/16 v4, 0x2e

    .line 148
    .line 149
    if-ne v3, v4, :cond_7

    .line 150
    .line 151
    new-instance v3, Landroid/content/ComponentName;

    .line 152
    .line 153
    invoke-static {v1, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-direct {v3, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_7
    new-instance v3, Landroid/content/ComponentName;

    .line 162
    .line 163
    invoke-direct {v3, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :goto_2
    monitor-enter p0

    .line 167
    :try_start_2
    iget-object v1, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    .line 168
    .line 169
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    check-cast v1, Landroid/app/SearchableInfo;

    .line 174
    .line 175
    if-eqz v1, :cond_8

    .line 176
    .line 177
    iget-object v2, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    .line 178
    .line 179
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :catchall_1
    move-exception p1

    .line 184
    goto :goto_4

    .line 185
    :cond_8
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 186
    if-eqz v1, :cond_9

    .line 187
    .line 188
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    .line 189
    .line 190
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 195
    .line 196
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    invoke-virtual {p0, p1, v3, v2}, Landroid/content/pm/PackageManagerInternal;->canAccessComponent(IILandroid/content/ComponentName;)Z

    .line 209
    .line 210
    .line 211
    move-result p0

    .line 212
    if-eqz p0, :cond_9

    .line 213
    .line 214
    goto/16 :goto_0

    .line 215
    .line 216
    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 217
    throw p1

    .line 218
    :catch_0
    move-exception p0

    .line 219
    const-string p1, "Searchables"

    .line 220
    .line 221
    const-string v1, "Error getting activity info "

    .line 222
    .line 223
    invoke-static {v1, p0, p1}, Landroid/net/util/NetdService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    :cond_9
    :goto_5
    return-object v0

    .line 227
    :goto_6
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 228
    throw p1
.end method

.method public final getSearchables(I)Lcom/android/server/search/Searchables;
    .locals 6

    .line 1
    const-string v0, "User "

    .line 2
    .line 3
    const-string v1, "User "

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    :try_start_0
    iget-object v4, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-class v5, Landroid/os/UserManager;

    .line 12
    .line 13
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Landroid/os/UserManager;

    .line 18
    .line 19
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    if-eqz v5, :cond_2

    .line 24
    .line 25
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 26
    .line 27
    .line 28
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    .line 35
    .line 36
    monitor-enter v1

    .line 37
    :try_start_1
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/android/server/search/Searchables;

    .line 44
    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    new-instance v0, Lcom/android/server/search/Searchables;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-direct {v0, v2, p1}, Lcom/android/server/search/Searchables;-><init>(Landroid/content/Context;I)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    .line 55
    .line 56
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/search/Searchables;->updateSearchableListIfNeeded()V

    .line 63
    .line 64
    .line 65
    monitor-exit v1

    .line 66
    return-object v0

    .line 67
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    throw p0

    .line 69
    :cond_1
    :try_start_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p1, " isn\'t unlocked"

    .line 80
    .line 81
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p0

    .line 92
    :catchall_1
    move-exception p0

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 95
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p1, " doesn\'t exist"

    .line 105
    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    .line 119
    .line 120
    throw p0
.end method

.method public final getSearchablesInGlobalSearch()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/android/server/search/Searchables;->createFilterdSearchableInfoList(Ljava/util/List;)Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    monitor-exit p0

    .line 20
    throw v0
.end method

.method public final getWebSearchActivity()Landroid/content/ComponentName;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iget-object v3, p0, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManagerInternal;->canAccessComponent(IILandroid/content/ComponentName;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    monitor-exit p0

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    monitor-exit p0

    .line 43
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    .line 45
    :goto_1
    monitor-exit p0

    .line 46
    throw v0
.end method

.method public final launchAssist(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    const-class p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    :try_start_0
    invoke-interface {p0, p2}, Lcom/android/internal/statusbar/IStatusBar;->startAssist(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    :catch_0
    :cond_0
    return-void
.end method
