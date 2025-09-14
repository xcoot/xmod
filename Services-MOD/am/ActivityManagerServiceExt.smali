.class public final Lcom/android/server/am/ActivityManagerServiceExt;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CSC_VERSION:Ljava/lang/String;

.field public static final MAX_LONG_LIVE_APP:I

.field public static final PRE_BOOT_CSC_FILE:Ljava/io/File;


# instance fields
.field public mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mBgHandler:Lcom/android/server/am/ActivityManagerServiceExt$BgHandler;

.field public final mBrAllowListCallback:Lcom/android/server/am/ActivityManagerServiceExt$1;

.field public final mBrMap:Landroid/util/ArrayMap;

.field public final mBroadcastReceiverNotInAllowlist:Ljava/util/Map;

.field public mCanTmoPkgAvoidForceStop:Z

.field public mCb4Process:Ljava/util/Optional;

.field public final mContext:Landroid/content/Context;

.field public final mDiscardList:Ljava/util/ArrayList;

.field public final mExceptionList:Ljava/util/ArrayList;

.field public final mForceKeepAliveProcesses:Ljava/util/Set;

.field public final mForceKillForDeXRunnable:Lcom/android/server/am/ActivityManagerServiceExt$2;

.field public final mForceKillPackages:Ljava/util/Set;

.field public final mForceStopReasons:Ljava/util/Set;

.field public final mLongLiveAppByPackages:Ljava/util/ArrayList;

.field public final mLongLiveCallbacks:Ljava/util/ArrayList;

.field public final mMetaDataCollector:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

.field public mParser:Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;

.field public mPref:Landroid/content/SharedPreferences;

.field public final mRelaxedBroadcastActions:Ljava/util/HashSet;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final persistentApps:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string/jumbo v0, "ril.official_cscver"

    .line 4
    const-string v1, "DUMMY"

    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/android/server/am/ActivityManagerServiceExt;->CSC_VERSION:Ljava/lang/String;

    .line 12
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Ljava/io/File;

    .line 18
    const-string/jumbo v2, "system"

    .line 21
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/io/File;

    .line 26
    const-string/jumbo v2, "pre_boot_csc.dat"

    .line 29
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    sput-object v0, Lcom/android/server/am/ActivityManagerServiceExt;->PRE_BOOT_CSC_FILE:Ljava/io/File;

    .line 34
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    .line 36
    if-eqz v0, :cond_0

    .line 38
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_NEVERKILLEDAPP_NUM:I

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v0, 0x1

    .line 42
    :goto_0
    sput v0, Lcom/android/server/am/ActivityManagerServiceExt;->MAX_LONG_LIVE_APP:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;

    .line 6
    invoke-direct {v0}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mParser:Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;

    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBroadcastReceiverNotInAllowlist:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    .line 32
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mCb4Process:Ljava/util/Optional;

    .line 38
    new-instance v0, Landroid/util/ArrayMap;

    .line 40
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBrMap:Landroid/util/ArrayMap;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    .line 47
    const-string v1, "android"

    .line 49
    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 52
    move-result-object v1

    .line 53
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 56
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mExceptionList:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    .line 60
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDiscardList:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Lcom/android/server/am/ActivityManagerServiceExt$1;

    .line 67
    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityManagerServiceExt$1;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;)V

    .line 70
    new-instance v1, Ljava/util/HashSet;

    .line 72
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 75
    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceStopReasons:Ljava/util/Set;

    .line 77
    new-instance v2, Ljava/util/HashSet;

    .line 79
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 82
    iput-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceKillPackages:Ljava/util/Set;

    .line 84
    new-instance v3, Ljava/util/HashSet;

    .line 86
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 89
    iput-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceKeepAliveProcesses:Ljava/util/Set;

    .line 91
    new-instance v4, Lcom/android/server/am/ActivityManagerServiceExt$2;

    .line 93
    const/4 v5, 0x0

    .line 94
    invoke-direct {v4, v5, p0}, Lcom/android/server/am/ActivityManagerServiceExt$2;-><init>(ILjava/lang/Object;)V

    .line 97
    const/4 v4, 0x0

    .line 98
    iput-object v4, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mRelaxedBroadcastActions:Ljava/util/HashSet;

    .line 100
    new-instance v5, Ljava/util/HashSet;

    .line 102
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 105
    const-string/jumbo v5, "com.android.systemui"

    .line 108
    filled-new-array {v5}, [Ljava/lang/String;

    .line 111
    move-result-object v5

    .line 112
    invoke-static {v5}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 115
    move-result-object v5

    .line 116
    iput-object v5, p0, Lcom/android/server/am/ActivityManagerServiceExt;->persistentApps:Ljava/util/ArrayList;

    .line 118
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 122
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mParser:Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;

    .line 124
    invoke-virtual {p2}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;->parseAllowList()V

    .line 127
    sget-object p2, Lcom/samsung/android/server/packagefeature/PackageFeature;->BROADCAST_RECEIVER_ALLOW_LIST:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 129
    invoke-virtual {p2, v0}, Lcom/samsung/android/server/packagefeature/PackageFeature;->registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 135
    move-result-object p1

    .line 136
    const p2, 0x1070150

    .line 139
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 142
    move-result-object p1

    .line 143
    array-length p2, p1

    .line 144
    if-lez p2, :cond_0

    .line 146
    new-instance p2, Ljava/util/HashSet;

    .line 148
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 151
    move-result-object p1

    .line 152
    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 155
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mRelaxedBroadcastActions:Ljava/util/HashSet;

    .line 157
    :cond_0
    new-instance p1, Ljava/lang/ThreadLocal;

    .line 159
    invoke-direct {p1}, Ljava/lang/ThreadLocal;-><init>()V

    .line 162
    new-instance p1, Ljava/util/ArrayList;

    .line 164
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 169
    const-string/jumbo p2, "yyyy/MM/dd HH:mm:ss.SSS zzz"

    .line 172
    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 175
    new-instance p1, Ljava/util/Date;

    .line 177
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 180
    new-instance p1, Lcom/android/server/am/ActivityManagerServiceExt$BgHandler;

    .line 182
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    .line 185
    move-result-object p2

    .line 186
    invoke-virtual {p2}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    .line 189
    move-result-object p2

    .line 190
    const/4 v0, 0x0

    .line 191
    invoke-direct {p1, p2, v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 194
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBgHandler:Lcom/android/server/am/ActivityManagerServiceExt$BgHandler;

    .line 196
    new-instance p1, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    .line 198
    invoke-direct {p1, p0}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;)V

    .line 201
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mMetaDataCollector:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    .line 203
    invoke-static {p1}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->-$$Nest$mscheduleLoad(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;)V

    .line 206
    const-string/jumbo p0, "com.tencent.mm"

    .line 209
    invoke-virtual {v2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 212
    const-string/jumbo p0, "com.tencent.mm:exdevice"

    .line 215
    invoke-virtual {v3, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 218
    const-string/jumbo p0, "installPackageLI"

    .line 221
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 224
    const-string/jumbo p0, "pkg removed"

    .line 227
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 230
    const-string/jumbo p0, "pkg changed"

    .line 233
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 236
    const-string p0, "ActivityManagerServiceExt"

    .line 238
    const-string p1, "ActivityManagerServiceExt :: created"

    .line 240
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void
.end method

.method public static updateNeverKill(Landroid/os/RemoteCallback;ZLjava/lang/String;I)V
    .locals 6

    .line 1
    const-string v0, ","

    .line 3
    const-string/jumbo v1, "updateNeverKill:"

    .line 6
    if-gtz p3, :cond_0

    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    move-result-wide v2

    .line 13
    :try_start_0
    const-string v4, "ActivityManagerServiceExt"

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    invoke-static {v4, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance p1, Landroid/os/Bundle;

    .line 44
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 47
    const-string v0, "KEY_NEVER_KILL_PACKAGE"

    .line 49
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string p2, "KEY_NEVER_KILL_PID"

    .line 54
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :catch_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    throw p0

    .line 69
    :goto_0
    return-void
.end method


# virtual methods
.method public final addLongLivePackageLocked(Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "longLivePackage "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, " + "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const-string v1, "ActivityManagerServiceExt"

    .line 28
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 44
    move-result v0

    .line 45
    sget v1, Lcom/android/server/am/ActivityManagerServiceExt;->MAX_LONG_LIVE_APP:I

    .line 47
    if-lt v0, v1, :cond_0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerServiceExt;->markAsLongLivePackageIfAliveLocked(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->saveLongLivePackage()Z

    .line 61
    move-result p0

    .line 62
    return p0

    .line 63
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 64
    return p0
.end method

.method public final dumpLongLivePackageLocked(Ljava/io/PrintWriter;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 12
    if-eqz p2, :cond_0

    .line 14
    const-string p2, "-------------------------------------------------------------------------------"

    .line 16
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    :cond_0
    const-string p2, "ACTIVITY MANAGER - LONG LIVE APP"

    .line 21
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    const-string p2, "    longLiveAppByPackages: "

    .line 26
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 34
    const-string p0, "    Max="

    .line 36
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 39
    sget p0, Lcom/android/server/am/ActivityManagerServiceExt;->MAX_LONG_LIVE_APP:I

    .line 41
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    .line 44
    :cond_1
    return-void
.end method

.method public final forceStopPackageLocked(IILjava/lang/String;Z)V
    .locals 8

    const/4 v4, 0x1

    .line 1
    const-string/jumbo v7, "pkg removed"

    const/16 v3, 0xa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p4

    move-object v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerServiceExt;->forceStopPackageLocked(IIIZZLjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final forceStopPackageLocked(IIIZZLjava/lang/String;Ljava/lang/String;)Z
    .locals 12

    move-object v0, p0

    move-object/from16 v1, p6

    .line 2
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mMetaDataCollector:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    const-string/jumbo v3, "com.samsung.android.persistent.downloadable"

    invoke-static {v2, v1, v3}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->-$$Nest$mhasBooleanMetaData(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceStopReasons:Ljava/util/Set;

    check-cast v2, Ljava/util/HashSet;

    move-object/from16 v10, p7

    invoke-virtual {v2, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "forceStopPackageLocked with revised flags for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManagerServiceExt"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :goto_0
    move v3, v2

    move v6, v3

    goto :goto_1

    :cond_0
    move-object/from16 v10, p7

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 5
    :goto_1
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object/from16 v1, p6

    move v2, p1

    move/from16 v4, p4

    move/from16 v7, p5

    move v9, p2

    move-object/from16 v10, p7

    move v11, p3

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZZILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public final getDedicatedProcessesLocked(I)Ljava/util/ArrayList;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 11
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    .line 13
    const/4 v1, -0x1

    .line 14
    if-ne p1, v1, :cond_0

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    .line 18
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_0
    if-ge v2, v1, :cond_1

    .line 28
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 31
    move-result v3

    .line 32
    invoke-virtual {p0, v3}, Lcom/android/server/wm/RecentTasks$UserToProcMap;->get(I)Ljava/util/HashMap;

    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks$UserToProcMap;->get(I)Ljava/util/HashMap;

    .line 49
    move-result-object p0

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    .line 52
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 55
    move-result-object p0

    .line 56
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 59
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 63
    return-object p1

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 69
    throw p0
.end method

.method public final initLongLivePackageLocked()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string/jumbo v2, "multiwindow.property"

    .line 7
    if-nez v0, :cond_0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    .line 19
    const-string v3, "LONG_LIVE_BY_PACKAGE"

    .line 21
    const/4 v4, 0x0

    .line 22
    if-nez v0, :cond_1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    :try_start_1
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 28
    goto :goto_0

    .line 29
    :catch_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    .line 31
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    const-string/jumbo v5, "migrateTo Set "

    .line 38
    const-string v6, "ActivityManagerServiceExt"

    .line 40
    invoke-static {v5, v0, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    .line 45
    if-nez v5, :cond_2

    .line 47
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {v5, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 52
    move-result-object v1

    .line 53
    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    .line 55
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    .line 57
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 60
    move-result-object v1

    .line 61
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_3

    .line 73
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    .line 75
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->saveLongLivePackage()Z

    .line 81
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 86
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    .line 88
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 91
    move-result-object v0

    .line 92
    if-eqz v0, :cond_4

    .line 94
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 99
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    .line 101
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 104
    move-result-object v0

    .line 105
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_4

    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Ljava/lang/String;

    .line 117
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerServiceExt;->markAsLongLivePackageIfAliveLocked(Ljava/lang/String;)V

    .line 120
    goto :goto_1

    .line 121
    :cond_4
    return-void
.end method

.method public final intentFilterForReceiverAllowlist(Landroid/content/IIntentReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/IntentFilter;
    .locals 4

    .line 1
    if-eqz p3, :cond_6

    .line 3
    if-eqz p4, :cond_6

    .line 5
    if-eqz p1, :cond_6

    .line 7
    if-eqz p2, :cond_0

    .line 9
    const/4 p1, -0x1

    .line 10
    if-eq p2, p1, :cond_0

    .line 12
    goto/16 :goto_2

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mParser:Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;

    .line 16
    invoke-virtual {p1, p4}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;->isInRestrictedPackageList(Ljava/lang/String;)Z

    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 22
    return-object p3

    .line 23
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 25
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-virtual {p3}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    .line 31
    move-result-object p2

    .line 32
    if-nez p2, :cond_2

    .line 34
    return-object p3

    .line 35
    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_5

    .line 41
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mParser:Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;

    .line 49
    invoke-virtual {v1}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;->getRestricedIntent()Ljava/util/List;

    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_2

    .line 59
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mParser:Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;

    .line 61
    invoke-virtual {v1, v0, p4, p3}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;->isInAllowList(Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentFilter;)Z

    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_2

    .line 67
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBroadcastReceiverNotInAllowlist:Ljava/util/Map;

    .line 72
    check-cast v1, Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_3

    .line 80
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBroadcastReceiverNotInAllowlist:Ljava/util/Map;

    .line 82
    check-cast v1, Landroid/util/ArrayMap;

    .line 84
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Ljava/util/List;

    .line 90
    if-eqz v1, :cond_4

    .line 92
    invoke-interface {v1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_4

    .line 98
    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    goto :goto_1

    .line 102
    :cond_3
    invoke-static {p4}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 105
    move-result-object v1

    .line 106
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBroadcastReceiverNotInAllowlist:Ljava/util/Map;

    .line 108
    check-cast v2, Landroid/util/ArrayMap;

    .line 110
    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_4
    :goto_1
    const-string v1, "action:"

    .line 115
    const-string v2, " callerPackage:"

    .line 117
    const-string v3, " is not registered!"

    .line 119
    invoke-static {v1, v0, v2, p4, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    move-result-object v0

    .line 123
    const-string v1, "ActivityManagerServiceExt"

    .line 125
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    goto :goto_0

    .line 129
    :cond_5
    new-instance p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda7;

    .line 131
    invoke-direct {p0, p3}, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda7;-><init>(Landroid/content/IntentFilter;)V

    .line 134
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 137
    :cond_6
    :goto_2
    return-object p3
.end method

.method public final isNeedRestrictToSendBr(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 3
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v1, "android"

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mExceptionList:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 15
    move-result v2

    .line 16
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBrMap:Landroid/util/ArrayMap;

    .line 18
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Landroid/util/ArrayMap;

    .line 24
    if-nez v3, :cond_1

    .line 26
    new-instance v3, Landroid/util/ArrayMap;

    .line 28
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 31
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBrMap:Landroid/util/ArrayMap;

    .line 33
    invoke-virtual {v4, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 39
    move-result-object v4

    .line 40
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_2

    .line 46
    const-string v4, "EMPTY_ACTION"

    .line 48
    const/16 v5, 0xbb8

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const/16 v5, 0x5dc

    .line 53
    :goto_1
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-result-object v6

    .line 57
    check-cast v6, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;

    .line 59
    const/4 v7, 0x0

    .line 60
    if-nez v6, :cond_3

    .line 62
    new-instance v6, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;

    .line 64
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 67
    iput v7, v6, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mCnt:I

    .line 69
    iput v7, v6, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mMaxCnt:I

    .line 71
    const-wide/16 v8, 0x0

    .line 73
    iput-wide v8, v6, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mTotalCnt:J

    .line 75
    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_3
    iget v8, v6, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mCnt:I

    .line 80
    const/4 v9, 0x1

    .line 81
    if-lt v8, v5, :cond_5

    .line 83
    if-nez v2, :cond_5

    .line 85
    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    .line 91
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 97
    move-result-wide v3

    .line 98
    new-instance v5, Ljava/text/SimpleDateFormat;

    .line 100
    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 103
    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 106
    new-instance v6, Ljava/util/Date;

    .line 108
    invoke-direct {v6, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 111
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v3, " from="

    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v3, " key="

    .line 125
    invoke-static {v2, v1, v3, p1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDiscardList:Ljava/util/ArrayList;

    .line 130
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 133
    move-result p1

    .line 134
    const/16 v3, 0xa

    .line 136
    if-le p1, v3, :cond_4

    .line 138
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDiscardList:Ljava/util/ArrayList;

    .line 140
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 143
    :cond_4
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDiscardList:Ljava/util/ArrayList;

    .line 145
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance p0, Ljava/lang/StringBuilder;

    .line 154
    const-string p1, "Too many Broadcast Requested :: This BR will not be sent from="

    .line 156
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string p1, " intent="

    .line 164
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object p0

    .line 174
    const-string p1, "ActivityManagerServiceExt"

    .line 176
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return v9

    .line 180
    :cond_5
    iput-boolean v9, p1, Lcom/android/server/am/BroadcastRecord;->mCounted:Z

    .line 182
    add-int/2addr v8, v9

    .line 183
    iput v8, v6, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mCnt:I

    .line 185
    iget-wide p0, v6, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mTotalCnt:J

    .line 187
    const-wide/16 v0, 0x1

    .line 189
    add-long/2addr p0, v0

    .line 190
    iput-wide p0, v6, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mTotalCnt:J

    .line 192
    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    return v7
.end method

.method public final killAllBackgroundProcessesExcept(IILandroid/os/Bundle;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    move-object/from16 v3, p3

    .line 9
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 11
    const-string v5, "android.permission.KILL_BACKGROUND_PROCESSES"

    .line 13
    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    .line 16
    move-result v4

    .line 17
    if-nez v4, :cond_f

    .line 19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    move-result-wide v4

    .line 23
    const/4 v7, 0x0

    .line 24
    if-eqz v3, :cond_0

    .line 26
    :try_start_0
    const-string/jumbo v8, "name"

    .line 29
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v8

    .line 33
    const-string/jumbo v9, "kill_packages"

    .line 36
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 39
    move-result-object v9

    .line 40
    check-cast v9, Ljava/util/Set;

    .line 42
    const-string/jumbo v10, "keep_packages"

    .line 45
    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 48
    move-result-object v10

    .line 49
    check-cast v10, Ljava/util/Set;

    .line 51
    const-string/jumbo v11, "skip_sdk_version_check"

    .line 54
    invoke-virtual {v3, v11, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 57
    move-result v3

    .line 58
    const/4 v11, 0x1

    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    move-wide/from16 v16, v4

    .line 63
    goto/16 :goto_e

    .line 65
    :cond_0
    const-string/jumbo v8, "multi-resolution"

    .line 68
    const/4 v9, 0x0

    .line 69
    move v3, v7

    .line 70
    move v11, v3

    .line 71
    move-object v10, v9

    .line 72
    :goto_0
    iget-object v12, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 74
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 77
    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :try_start_1
    iget-object v13, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 80
    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 82
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 85
    monitor-enter v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 86
    :try_start_2
    new-instance v14, Ljava/util/ArrayList;

    .line 88
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 91
    iget-object v15, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 93
    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 95
    iget-object v15, v15, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 97
    invoke-virtual {v15}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 100
    move-result-object v15

    .line 101
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    .line 104
    move-result v15

    .line 105
    :goto_1
    if-ge v7, v15, :cond_d

    .line 107
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 109
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 111
    iget-object v6, v6, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 113
    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 116
    move-result-object v6

    .line 117
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 120
    move-result-object v6

    .line 121
    check-cast v6, Landroid/util/SparseArray;

    .line 123
    move/from16 p3, v15

    .line 125
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 128
    move-result v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 129
    move-wide/from16 v16, v4

    .line 131
    const/4 v4, 0x0

    .line 132
    :goto_2
    if-ge v4, v15, :cond_c

    .line 134
    :try_start_3
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 137
    move-result-object v5

    .line 138
    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 140
    move-object/from16 v18, v6

    .line 142
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 144
    iget v6, v6, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 146
    move/from16 v19, v15

    .line 148
    const/16 v15, 0x14

    .line 150
    if-ne v6, v15, :cond_2

    .line 152
    move-object/from16 v21, v9

    .line 154
    move-object/from16 v22, v10

    .line 156
    :cond_1
    :goto_3
    const/4 v6, 0x1

    .line 157
    goto/16 :goto_a

    .line 159
    :cond_2
    const/4 v15, 0x2

    .line 160
    if-ne v6, v15, :cond_3

    .line 162
    const/4 v6, 0x1

    .line 163
    goto :goto_4

    .line 164
    :cond_3
    const/4 v6, 0x0

    .line 165
    :goto_4
    iget-object v15, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceKillPackages:Ljava/util/Set;

    .line 167
    check-cast v15, Ljava/util/HashSet;

    .line 169
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 172
    move-result-object v15

    .line 173
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    move-result v20

    .line 177
    if-eqz v20, :cond_5

    .line 179
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    move-result-object v20

    .line 183
    move/from16 v21, v6

    .line 185
    move-object/from16 v6, v20

    .line 187
    check-cast v6, Ljava/lang/String;

    .line 189
    move-object/from16 v20, v15

    .line 191
    iget-object v15, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 193
    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 195
    invoke-virtual {v15, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 198
    move-result v6

    .line 199
    if-eqz v6, :cond_4

    .line 201
    const/4 v6, 0x1

    .line 202
    goto :goto_6

    .line 203
    :cond_4
    move-object/from16 v15, v20

    .line 205
    move/from16 v6, v21

    .line 207
    goto :goto_5

    .line 208
    :catchall_1
    move-exception v0

    .line 209
    goto/16 :goto_c

    .line 211
    :cond_5
    move/from16 v21, v6

    .line 213
    :goto_6
    if-eqz v11, :cond_7

    .line 215
    iget-object v15, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 217
    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 219
    if-eqz v9, :cond_6

    .line 221
    invoke-interface {v9, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 224
    move-result v20

    .line 225
    if-eqz v20, :cond_6

    .line 227
    move-object/from16 v21, v9

    .line 229
    const/4 v15, 0x0

    .line 230
    const/16 v20, 0x1

    .line 232
    goto :goto_8

    .line 233
    :cond_6
    if-eqz v10, :cond_7

    .line 235
    invoke-interface {v10, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 238
    move-result v15

    .line 239
    if-eqz v15, :cond_7

    .line 241
    move-object/from16 v21, v9

    .line 243
    const/4 v15, 0x1

    .line 244
    :goto_7
    const/16 v20, 0x0

    .line 246
    goto :goto_8

    .line 247
    :cond_7
    move-object/from16 v21, v9

    .line 249
    const/4 v15, 0x0

    .line 250
    goto :goto_7

    .line 251
    :goto_8
    iget-object v9, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceKeepAliveProcesses:Ljava/util/Set;

    .line 253
    move-object/from16 v22, v10

    .line 255
    iget-object v10, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 257
    check-cast v9, Ljava/util/HashSet;

    .line 259
    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 262
    move-result v9

    .line 263
    if-nez v9, :cond_8

    .line 265
    iget-object v9, v5, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 267
    invoke-virtual {v9}, Lcom/android/server/am/PackageList;->getPackageList()[Ljava/lang/String;

    .line 270
    const/4 v9, 0x0

    .line 271
    goto :goto_9

    .line 272
    :cond_8
    const/4 v9, 0x1

    .line 273
    :goto_9
    iget-boolean v10, v5, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    .line 275
    if-eqz v10, :cond_9

    .line 277
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    goto :goto_3

    .line 281
    :cond_9
    if-nez v9, :cond_1

    .line 283
    if-nez v15, :cond_1

    .line 285
    if-nez v3, :cond_a

    .line 287
    if-ltz v1, :cond_a

    .line 289
    iget-object v9, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 291
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 293
    if-ge v9, v1, :cond_1

    .line 295
    :cond_a
    if-ltz v2, :cond_b

    .line 297
    iget-object v9, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 299
    iget v10, v9, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 301
    if-gt v10, v2, :cond_b

    .line 303
    if-nez v6, :cond_b

    .line 305
    if-nez v20, :cond_b

    .line 307
    const-string/jumbo v6, "force-keep-alive"

    .line 310
    iget-object v9, v9, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 312
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    move-result v6

    .line 316
    if-eqz v6, :cond_1

    .line 318
    :cond_b
    const/4 v6, 0x1

    .line 319
    iput-boolean v6, v5, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    .line 321
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    :goto_a
    add-int/lit8 v4, v4, 0x1

    .line 326
    move-object/from16 v6, v18

    .line 328
    move/from16 v15, v19

    .line 330
    move-object/from16 v9, v21

    .line 332
    move-object/from16 v10, v22

    .line 334
    goto/16 :goto_2

    .line 336
    :cond_c
    move-object/from16 v21, v9

    .line 338
    move-object/from16 v22, v10

    .line 340
    const/4 v6, 0x1

    .line 341
    add-int/lit8 v7, v7, 0x1

    .line 343
    move/from16 v15, p3

    .line 345
    move-wide/from16 v4, v16

    .line 347
    goto/16 :goto_1

    .line 349
    :catchall_2
    move-exception v0

    .line 350
    move-wide/from16 v16, v4

    .line 352
    goto :goto_c

    .line 353
    :cond_d
    move-wide/from16 v16, v4

    .line 355
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 358
    move-result v1

    .line 359
    const/4 v7, 0x0

    .line 360
    :goto_b
    if-ge v7, v1, :cond_e

    .line 362
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 364
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 366
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 369
    move-result-object v3

    .line 370
    move-object/from16 v19, v3

    .line 372
    check-cast v19, Lcom/android/server/am/ProcessRecord;

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    .line 376
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    const-string/jumbo v4, "kill all background except(policy="

    .line 382
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    const-string v4, ")"

    .line 390
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    move-result-object v24

    .line 397
    const/16 v21, 0x1

    .line 399
    const/16 v22, 0xd

    .line 401
    const/16 v23, 0x0

    .line 403
    const/16 v25, 0x1

    .line 405
    const/16 v20, 0x0

    .line 407
    move-object/from16 v18, v2

    .line 409
    invoke-virtual/range {v18 .. v25}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    .line 412
    add-int/lit8 v7, v7, 0x1

    .line 414
    goto :goto_b

    .line 415
    :cond_e
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 416
    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 419
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 420
    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 423
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 426
    return-void

    .line 427
    :catchall_3
    move-exception v0

    .line 428
    goto :goto_e

    .line 429
    :catchall_4
    move-exception v0

    .line 430
    goto :goto_d

    .line 431
    :goto_c
    :try_start_6
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 432
    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 435
    throw v0

    .line 436
    :catchall_5
    move-exception v0

    .line 437
    move-wide/from16 v16, v4

    .line 439
    :goto_d
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 440
    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 443
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 444
    :goto_e
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 447
    throw v0

    .line 448
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 450
    const-string v1, "Permission Denial: killAllBackgroundProcessesExcept() from pid="

    .line 452
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    const-string v1, ", uid="

    .line 457
    const-string v2, " requires android.permission.KILL_BACKGROUND_PROCESSES"

    .line 459
    const-string v3, "ActivityManagerServiceExt"

    .line 461
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 464
    move-result-object v0

    .line 465
    new-instance v1, Ljava/lang/SecurityException;

    .line 467
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 470
    throw v1
.end method

.method public final markAsLongLivePackageIfAliveLocked(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 11
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 13
    new-instance v2, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda0;

    .line 15
    const/4 v3, 0x2

    .line 16
    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;Ljava/lang/Object;I)V

    .line 19
    const/4 p0, 0x0

    .line 20
    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(Ljava/util/function/Consumer;Z)V

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 33
    throw p0
.end method

.method public final removeLongLivePackageLocked(Ljava/lang/String;)Z
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "longLivePackage "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, " - "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const-string v1, "ActivityManagerServiceExt"

    .line 28
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x0

    .line 38
    if-nez v0, :cond_0

    .line 40
    return v1

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 51
    move-result v0

    .line 52
    add-int/lit8 v0, v0, -0x1

    .line 54
    :goto_0
    if-ltz v0, :cond_3

    .line 56
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;

    .line 64
    iget-object v3, v2, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->packageName:Ljava/lang/String;

    .line 66
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_2

    .line 72
    iget-object v3, v2, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->ref:Ljava/lang/ref/WeakReference;

    .line 74
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 80
    if-eqz v3, :cond_1

    .line 82
    iput-boolean v1, v3, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    .line 84
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mCb4Process:Ljava/util/Optional;

    .line 86
    new-instance v5, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda4;

    .line 88
    const/4 v6, 0x1

    .line 89
    invoke-direct {v5, p0, v2, v3, v6}, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;Lcom/android/server/am/ProcessRecord;I)V

    .line 92
    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 95
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 100
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 102
    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->saveLongLivePackage()Z

    .line 106
    move-result p0

    .line 107
    return p0
.end method

.method public final removeLongLivePackageWhenUninstalledLocked(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    const-string v1, "Uninstalled:"

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, "-"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    const-string v1, "ActivityManagerServiceExt"

    .line 36
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_1

    .line 52
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 63
    move-result v0

    .line 64
    add-int/lit8 v0, v0, -0x1

    .line 66
    :goto_0
    if-ltz v0, :cond_4

    .line 68
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;

    .line 76
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->ref:Ljava/lang/ref/WeakReference;

    .line 78
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 84
    if-eqz v2, :cond_2

    .line 86
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->packageName:Ljava/lang/String;

    .line 88
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_3

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 99
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 101
    goto :goto_0

    .line 102
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->saveLongLivePackage()Z

    .line 105
    return-void
.end method

.method public final removeLongLiveTaskLocked(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RecentTasks;->removeDedicatedProcessFromPackage(ILjava/lang/String;)V

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 24
    throw p0
.end method

.method public final restoreAllAdjs()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 16
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;

    .line 28
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->ref:Ljava/lang/ref/WeakReference;

    .line 30
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 36
    if-eqz v2, :cond_1

    .line 38
    const/4 v3, 0x0

    .line 39
    iput-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    .line 41
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mCb4Process:Ljava/util/Optional;

    .line 43
    new-instance v4, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda4;

    .line 45
    const/4 v5, 0x0

    .line 46
    invoke-direct {v4, p0, v1, v2, v5}, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;Lcom/android/server/am/ProcessRecord;I)V

    .line 49
    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 58
    return-void
.end method

.method public final saveLongLivePackage()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    .line 7
    const-string/jumbo v1, "multiwindow.property"

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    .line 19
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Landroid/util/ArraySet;

    .line 25
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    .line 27
    invoke-direct {v1, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 30
    const-string p0, "LONG_LIVE_BY_PACKAGE"

    .line 32
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 35
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    move-result p0

    .line 39
    return p0
.end method

.method public final setLongLivePackageLocked(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string/jumbo v0, "setLongLivePackage "

    .line 4
    const-string v1, "+"

    .line 6
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "ActivityManagerServiceExt"

    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->restoreAllAdjs()V

    .line 34
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 39
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    .line 41
    if-nez p1, :cond_0

    .line 43
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    .line 45
    const-string/jumbo v0, "multiwindow.property"

    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    .line 54
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    .line 56
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 59
    move-result-object p0

    .line 60
    const-string p1, "LONG_LIVE_BY_PACKAGE"

    .line 62
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 68
    move-result v1

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_2

    .line 78
    const/4 v0, 0x0

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Ljava/lang/String;

    .line 88
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_3

    .line 94
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->restoreAllAdjs()V

    .line 97
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 102
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerServiceExt;->markAsLongLivePackageIfAliveLocked(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->saveLongLivePackage()Z

    .line 113
    move-result v1

    .line 114
    :cond_3
    :goto_1
    return v1
.end method

.method public final setLongLiveTask(IZ)V
    .locals 5

    .line 1
    const-string v0, "ActivityManagerServiceExt"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "setLongLiveTask "

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v2, ","

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 31
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 34
    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 37
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->setLongLiveTask(IZ)Landroid/util/Pair;

    .line 40
    move-result-object p1

    .line 41
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 43
    if-eqz v1, :cond_0

    .line 45
    check-cast v1, Ljava/lang/String;

    .line 47
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 49
    check-cast p1, Ljava/lang/Integer;

    .line 51
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 54
    move-result p1

    .line 55
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 57
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 59
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 62
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 65
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 67
    new-instance v4, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda2;

    .line 69
    invoke-direct {v4, p0, p1, v1, p2}, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;ILjava/lang/String;Z)V

    .line 72
    const/4 p0, 0x0

    .line 73
    invoke-virtual {v3, v4, p0}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(Ljava/util/function/Consumer;Z)V

    .line 76
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 86
    throw p0

    .line 87
    :catchall_1
    move-exception p0

    .line 88
    goto :goto_1

    .line 89
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 90
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 93
    return-void

    .line 94
    :goto_1
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 95
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 98
    throw p0
.end method
