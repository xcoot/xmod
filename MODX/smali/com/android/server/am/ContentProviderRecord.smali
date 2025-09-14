.class public final Lcom/android/server/am/ContentProviderRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ComponentName$WithComponentName;


# instance fields
.field public final appInfo:Landroid/content/pm/ApplicationInfo;

.field public final connections:Ljava/util/ArrayList;

.field public externalProcessNoHandleCount:I

.field public externalProcessTokenToHandle:Landroid/util/ArrayMap;

.field public final info:Landroid/content/pm/ProviderInfo;

.field public launchingApp:Lcom/android/server/am/ProcessRecord;

.field public mRestartCount:I

.field public final name:Landroid/content/ComponentName;

.field public final noReleaseNeeded:Z

.field public proc:Lcom/android/server/am/ProcessRecord;

.field public provider:Landroid/content/IContentProvider;

.field public final service:Lcom/android/server/am/ActivityManagerService;

.field public shortStringName:Ljava/lang/String;

.field public final singleton:Z

.field public stringName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ProviderInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 11
    iput-object p1, p0, Lcom/android/server/am/ContentProviderRecord;->service:Lcom/android/server/am/ActivityManagerService;

    .line 13
    iput-object p2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 15
    iget p1, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 17
    iput p1, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    .line 19
    iput-object p3, p0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 21
    iput-object p4, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 23
    iput-boolean p5, p0, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    .line 25
    const-string/jumbo p1, "system"

    .line 28
    iget-object p2, p3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result p1

    .line 34
    iput-boolean p1, p0, Lcom/android/server/am/ContentProviderRecord;->noReleaseNeeded:Z

    .line 36
    return-void
.end method


# virtual methods
.method public final canRunHere(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 3
    iget-boolean v1, v0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 5
    if-nez v1, :cond_0

    .line 7
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 9
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 17
    :cond_0
    iget p0, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    .line 19
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 21
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 23
    if-ne p0, p1, :cond_1

    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6
    const-string/jumbo v0, "package="

    .line 9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 14
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 16
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 21
    const-string v0, " process="

    .line 23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 28
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 30
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 33
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    const-string/jumbo v0, "proc="

    .line 39
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 44
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    .line 49
    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 54
    const-string/jumbo v0, "launchingApp="

    .line 57
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    .line 62
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 65
    :cond_1
    if-eqz p3, :cond_2

    .line 67
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v0, "uid="

    .line 73
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    .line 78
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 81
    const-string v0, " provider="

    .line 83
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    .line 88
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 91
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    .line 93
    if-eqz v0, :cond_3

    .line 95
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v0, "singleton="

    .line 101
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    iget-boolean v0, p0, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    .line 106
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 109
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    const-string v0, "authority="

    .line 114
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 119
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 121
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    if-eqz p3, :cond_5

    .line 126
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 128
    iget-boolean v1, v0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 130
    if-nez v1, :cond_4

    .line 132
    iget-boolean v1, v0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 134
    if-nez v1, :cond_4

    .line 136
    iget v0, v0, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 138
    if-eqz v0, :cond_5

    .line 140
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 143
    const-string/jumbo v0, "isSyncable="

    .line 146
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 151
    iget-boolean v0, v0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 153
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 156
    const-string v0, " multiprocess="

    .line 158
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 163
    iget-boolean v0, v0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 165
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 168
    const-string v0, " initOrder="

    .line 170
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 175
    iget v0, v0, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 177
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 180
    :cond_5
    if-eqz p3, :cond_8

    .line 182
    invoke-virtual {p0}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_a

    .line 188
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 191
    const-string/jumbo v0, "externals:"

    .line 194
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    .line 199
    if-eqz v0, :cond_6

    .line 201
    const-string v0, " w/token="

    .line 203
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    .line 208
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 211
    move-result v0

    .line 212
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 215
    :cond_6
    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    .line 217
    if-lez v0, :cond_7

    .line 219
    const-string v0, " notoken="

    .line 221
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 224
    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    .line 226
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 229
    :cond_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 232
    goto :goto_0

    .line 233
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 235
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 238
    move-result v0

    .line 239
    if-gtz v0, :cond_9

    .line 241
    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    .line 243
    if-lez v0, :cond_a

    .line 245
    :cond_9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 250
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 253
    move-result v0

    .line 254
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 257
    const-string v0, " connections, "

    .line 259
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    .line 264
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 267
    const-string v0, " external handles"

    .line 269
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    :cond_a
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 274
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 277
    move-result v0

    .line 278
    if-lez v0, :cond_d

    .line 280
    if-eqz p3, :cond_b

    .line 282
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 285
    const-string p3, "Connections:"

    .line 287
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    :cond_b
    const/4 p3, 0x0

    .line 291
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 293
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 296
    move-result v0

    .line 297
    if-ge p3, v0, :cond_d

    .line 299
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 301
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 304
    move-result-object v0

    .line 305
    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    .line 307
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    const-string v1, "  -> "

    .line 312
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    .line 317
    const/16 v2, 0x80

    .line 319
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 322
    invoke-virtual {v0, v1}, Lcom/android/server/am/ContentProviderConnection;->toClientString(Ljava/lang/StringBuilder;)V

    .line 325
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    move-result-object v1

    .line 329
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    iget-object v1, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 334
    if-eq v1, p0, :cond_c

    .line 336
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 339
    const-string v1, "    *** WRONG PROVIDER: "

    .line 341
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 344
    iget-object v0, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 346
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 349
    :cond_c
    add-int/lit8 p3, p3, 0x1

    .line 351
    goto :goto_1

    .line 352
    :cond_d
    return-void
.end method

.method public final getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 3
    return-object p0
.end method

.method public final hasExternalProcessHandles()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget p0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    .line 7
    if-lez p0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method

.method public final newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;
    .locals 2

    .line 1
    new-instance v0, Landroid/app/ContentProviderHolder;

    .line 3
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 5
    invoke-direct {v0, v1}, Landroid/app/ContentProviderHolder;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    .line 10
    iput-object v1, v0, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 12
    iget-boolean p0, p0, Lcom/android/server/am/ContentProviderRecord;->noReleaseNeeded:Z

    .line 14
    iput-boolean p0, v0, Landroid/app/ContentProviderHolder;->noReleaseNeeded:Z

    .line 16
    iput-object p1, v0, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 18
    iput-boolean p2, v0, Landroid/app/ContentProviderHolder;->mLocal:Z

    .line 20
    return-object v0
.end method

.method public final onProviderPublishStatusLocked(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_4

    .line 11
    iget-object v3, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/android/server/am/ContentProviderConnection;

    .line 19
    iget-boolean v4, v3, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    .line 21
    if-eqz v4, :cond_3

    .line 23
    iget-object v4, v3, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 25
    if-eqz v4, :cond_3

    .line 27
    if-nez p1, :cond_1

    .line 29
    iget-object v5, p0, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    .line 31
    const-string v6, " for provider "

    .line 33
    const-string v7, "/"

    .line 35
    const-string v8, "ActivityManager"

    .line 37
    if-nez v5, :cond_0

    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    .line 41
    const-string v9, "Unable to launch app "

    .line 43
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    iget-object v9, p0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 48
    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 50
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v7, p0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 58
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 60
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v6, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 68
    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 70
    const-string v7, ": launching app became null"

    .line 72
    invoke-static {v5, v6, v7, v8}, Lcom/android/server/ProfileService$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v5, p0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 77
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 79
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 82
    move-result v5

    .line 83
    iget-object v6, p0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 85
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 87
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 89
    iget-object v8, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 91
    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 93
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object v5

    .line 97
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    move-result-object v6

    .line 101
    filled-new-array {v5, v7, v6, v8}, [Ljava/lang/Object;

    .line 104
    move-result-object v5

    .line 105
    const/16 v6, 0x7554

    .line 107
    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 110
    goto :goto_1

    .line 111
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 113
    const-string v9, "Timeout waiting for provider "

    .line 115
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    iget-object v9, p0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 120
    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 122
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v7, p0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 130
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 132
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-object v6, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 140
    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 142
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v6, " caller="

    .line 147
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    move-result-object v5

    .line 157
    invoke-static {v8, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_1
    :goto_1
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 162
    if-eqz v4, :cond_3

    .line 164
    if-eqz p1, :cond_2

    .line 166
    move-object v5, v3

    .line 167
    goto :goto_2

    .line 168
    :cond_2
    const/4 v5, 0x0

    .line 169
    :goto_2
    :try_start_0
    invoke-virtual {p0, v5, v1}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    .line 172
    move-result-object v5

    .line 173
    iget-object v6, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 175
    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 177
    iget v7, v3, Lcom/android/server/am/ContentProviderConnection;->mExpectedUserId:I

    .line 179
    invoke-interface {v4, v5, v6, v7, p1}, Landroid/app/IApplicationThread;->notifyContentProviderPublishStatus(Landroid/app/ContentProviderHolder;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :catch_0
    :cond_3
    iput-boolean v1, v3, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    .line 184
    add-int/lit8 v2, v2, 0x1

    .line 186
    goto/16 :goto_0

    .line 188
    :cond_4
    return-void
.end method

.method public final removeExternalProcessHandleInternalLocked(Landroid/os/IBinder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    .line 9
    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mToken:Landroid/os/IBinder;

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 15
    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAssociation:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 20
    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mProcStatsLock:Ljava/lang/Object;

    .line 22
    monitor-enter v1

    .line 23
    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAssociation:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 25
    invoke-virtual {v3}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stop()V

    .line 28
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iput-object v2, v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAssociation:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p0

    .line 35
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    .line 37
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object p1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    .line 42
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_1

    .line 48
    iput-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    .line 50
    :cond_1
    return-void
.end method

.method public final removeExternalProcessHandleLocked(Landroid/os/IBinder;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    .line 18
    if-eqz v0, :cond_0

    .line 20
    iget v2, v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAcquisitionCount:I

    .line 22
    sub-int/2addr v2, v1

    .line 23
    iput v2, v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAcquisitionCount:I

    .line 25
    if-nez v2, :cond_1

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/server/am/ContentProviderRecord;->removeExternalProcessHandleInternalLocked(Landroid/os/IBinder;)V

    .line 30
    return v1

    .line 31
    :cond_0
    iget p1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    .line 33
    sub-int/2addr p1, v1

    .line 34
    iput p1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    .line 36
    return v1

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    return p0
.end method

.method public final setProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 3
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 11
    :goto_0
    const/4 v1, 0x0

    .line 12
    if-ltz v0, :cond_2

    .line 14
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/android/server/am/ContentProviderConnection;

    .line 22
    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {v2}, Lcom/android/server/am/ContentProviderConnection;->startAssociationIfNeeded()V

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-object v3, v2, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 30
    if-eqz v3, :cond_1

    .line 32
    iget-object v3, v2, Lcom/android/server/am/ContentProviderConnection;->mProcStatsLock:Ljava/lang/Object;

    .line 34
    monitor-enter v3

    .line 35
    :try_start_0
    iget-object v4, v2, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 37
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stop()V

    .line 40
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    iput-object v1, v2, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw p0

    .line 47
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    .line 52
    if-eqz v0, :cond_5

    .line 54
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 57
    move-result v0

    .line 58
    add-int/lit8 v0, v0, -0x1

    .line 60
    :goto_2
    if-ltz v0, :cond_5

    .line 62
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    .line 64
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    .line 70
    if-eqz p1, :cond_3

    .line 72
    invoke-virtual {v2, p0}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->startAssociationIfNeeded(Lcom/android/server/am/ContentProviderRecord;)V

    .line 75
    goto :goto_3

    .line 76
    :cond_3
    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAssociation:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 78
    if-eqz v3, :cond_4

    .line 80
    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mProcStatsLock:Ljava/lang/Object;

    .line 82
    monitor-enter v3

    .line 83
    :try_start_2
    iget-object v4, v2, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAssociation:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 85
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stop()V

    .line 88
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 89
    iput-object v1, v2, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAssociation:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 91
    goto :goto_3

    .line 92
    :catchall_1
    move-exception p0

    .line 93
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    throw p0

    .line 95
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, -0x1

    .line 97
    goto :goto_2

    .line 98
    :cond_5
    return-void
.end method

.method public final toShortString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->shortStringName:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const/16 v1, 0x80

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 13
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const/16 v1, 0x2f

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 31
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->shortStringName:Ljava/lang/String;

    .line 44
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->stringName:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    :cond_0
    const/16 v0, 0x80

    .line 8
    const-string v1, "ContentProviderRecord{"

    .line 10
    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 17
    move-result v1

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, " u"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget v1, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    .line 32
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    const/16 v1, 0x20

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 46
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const/16 v1, 0x7d

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->stringName:Ljava/lang/String;

    .line 64
    return-object v0
.end method
