.class public final Lcom/android/server/sepunion/MinorModeObserverService;
.super Lcom/samsung/android/sepunion/IMinorModeObserverService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field public static final MM_URI:Landroid/net/Uri;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/sepunion/MinorModeObserverService$MyHandler;

.field public final mLimitPackageSet:Ljava/util/Set;

.field public mMinorModeEnabled:Z

.field public mMinorModeSupport:Z

.field public mObserverRegisterState:I

.field public final mUsageStatsWatcher:Lcom/android/server/sepunion/MinorModeObserverService$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "content://com.samsung.android.minormode.db"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/sepunion/MinorModeObserverService;->MM_URI:Landroid/net/Uri;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sepunion/IMinorModeObserverService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mLimitPackageSet:Ljava/util/Set;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mMinorModeSupport:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mMinorModeEnabled:Z

    .line 15
    .line 16
    iput v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mObserverRegisterState:I

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/sepunion/MinorModeObserverService$2;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/android/server/sepunion/MinorModeObserverService$2;-><init>(Lcom/android/server/sepunion/MinorModeObserverService;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mUsageStatsWatcher:Lcom/android/server/sepunion/MinorModeObserverService$2;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    const-string p1, "MinorModeObserverService"

    .line 28
    .line 29
    invoke-static {p1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v0, Lcom/android/server/sepunion/MinorModeObserverService$MyHandler;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {v0, p0, p1}, Lcom/android/server/sepunion/MinorModeObserverService$MyHandler;-><init>(Lcom/android/server/sepunion/MinorModeObserverService;Landroid/os/Looper;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mHandler:Lcom/android/server/sepunion/MinorModeObserverService$MyHandler;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p1, "\n##### MinorModeObserverService #####\n##### (dumpsys sepunion MinorModeObserverService) #####\n"

    .line 2
    .line 3
    const-string p3, "Observer register state: "

    .line 4
    .line 5
    invoke-static {p2, p1, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget p3, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mObserverRegisterState:I

    .line 10
    .line 11
    invoke-static {p3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string p3, "ignorePackageList: "

    .line 28
    .line 29
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mLimitPackageSet:Ljava/util/Set;

    .line 33
    .line 34
    if-nez p0, :cond_0

    .line 35
    .line 36
    const-string/jumbo p0, "null"

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    :goto_0
    invoke-static {p1, p0, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final handleLimitPackages()V
    .locals 5

    .line 1
    const-string v0, "MinorModeObserverService"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/android/server/sepunion/MinorModeObserverService;->MM_URI:Landroid/net/Uri;

    .line 10
    .line 11
    const-string v3, "get_limit_packages"

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const-string v2, "limit_packages"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mLimitPackageSet:Ljava/util/Set;

    .line 27
    .line 28
    check-cast v2, Ljava/util/HashSet;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mLimitPackageSet:Ljava/util/Set;

    .line 34
    .line 35
    invoke-interface {p0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string p0, "handleLimitPackages call failed: Bundle from MinorMode is null"

    .line 42
    .line 43
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :goto_0
    const-string v1, "handleLimitPackages call failed: "

    .line 48
    .line 49
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .line 51
    .line 52
    :goto_1
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 1

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mHandler:Lcom/android/server/sepunion/MinorModeObserverService$MyHandler;

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/sepunion/MinorModeObserverService$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/server/sepunion/MinorModeObserverService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/MinorModeObserverService;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final onCleanupUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string p0, "MinorModeObserverService"

    .line 2
    .line 3
    const-string/jumbo p1, "onCreate"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    const-string p0, "MinorModeObserverService"

    .line 2
    .line 3
    const-string/jumbo v0, "onDestroy"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 1
    const-string p0, "MinorModeObserverService"

    .line 2
    .line 3
    const-string/jumbo v0, "onStart"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onStartUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStopUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSwitchUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUnlockUser(I)V
    .locals 0

    .line 1
    return-void
.end method
