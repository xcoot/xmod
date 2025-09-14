.class public final Lcom/android/server/PinnerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT_ANON_SIZE:J

.field public static final PAGE_SIZE:I

.field public static final PROP_PIN_PINLIST:Z


# instance fields
.field public final mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mBroadcastReceiver:Lcom/android/server/PinnerService$1;

.field public final mConfiguredHomePinBytes:I

.field public final mConfiguredToPinAssistant:Z

.field public final mConfiguredToPinCamera:Z

.field public final mConfiguredWebviewPinBytes:I

.field public final mContext:Landroid/content/Context;

.field public mCurrentlyPinnedAnonSize:J

.field public final mDeviceConfigAnonSizeListener:Lcom/android/server/PinnerService$2;

.field public final mDeviceConfigInterface:Landroid/provider/DeviceConfigInterface;

.field public final mInjector:Lcom/android/server/PinnerService$Injector;

.field public final mPendingRepin:Landroid/util/ArrayMap;

.field public mPinAnonAddress:J

.field public mPinAnonSize:J

.field public mPinKeys:Landroid/util/ArraySet;

.field public final mPinnedApps:Landroid/util/ArrayMap;

.field public final mPinnedFiles:Landroid/util/ArrayMap;

.field public final mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    .line 3
    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    .line 6
    move-result-wide v0

    .line 7
    long-to-int v0, v0

    .line 8
    sput v0, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    .line 10
    const-string/jumbo v0, "pinner.use_pinlist"

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 17
    move-result v0

    .line 18
    sput-boolean v0, Lcom/android/server/PinnerService;->PROP_PIN_PINLIST:Z

    .line 20
    const-string/jumbo v0, "pinner.pin_shared_anon_size"

    .line 23
    const-wide/16 v1, 0x0

    .line 25
    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 28
    move-result-wide v0

    .line 29
    sput-wide v0, Lcom/android/server/PinnerService;->DEFAULT_ANON_SIZE:J

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/PinnerService$Injector;

    invoke-direct {v0}, Lcom/android/server/PinnerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/PinnerService;-><init>(Landroid/content/Context;Lcom/android/server/PinnerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/PinnerService$Injector;)V
    .locals 4

    .line 2
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    .line 5
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    .line 7
    new-instance v1, Lcom/android/server/PinnerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/PinnerService$1;-><init>(Lcom/android/server/PinnerService;)V

    .line 8
    new-instance v2, Lcom/android/server/PinnerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/PinnerService$2;-><init>(Lcom/android/server/PinnerService;)V

    iput-object v2, p0, Lcom/android/server/PinnerService;->mDeviceConfigAnonSizeListener:Lcom/android/server/PinnerService$2;

    .line 9
    iput-object p1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lcom/android/server/PinnerService;->mInjector:Lcom/android/server/PinnerService$Injector;

    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    sget-object p2, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    .line 13
    iput-object p2, p0, Lcom/android/server/PinnerService;->mDeviceConfigInterface:Landroid/provider/DeviceConfigInterface;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x11101fe

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/PinnerService;->mConfiguredToPinCamera:Z

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x10e0114

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/PinnerService;->mConfiguredHomePinBytes:I

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x11101fd

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/PinnerService;->mConfiguredToPinAssistant:Z

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x10e0115

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/PinnerService;->mConfiguredWebviewPinBytes:I

    .line 18
    invoke-virtual {p0}, Lcom/android/server/PinnerService;->createPinKeys()Landroid/util/ArraySet;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    .line 19
    new-instance p2, Lcom/android/server/PinnerService$PinnerHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p2, p0, v2}, Lcom/android/server/PinnerService$PinnerHandler;-><init>(Lcom/android/server/PinnerService;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    .line 20
    const-class p2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p2, p0, Lcom/android/server/PinnerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 21
    const-class p2, Landroid/app/ActivityManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManagerInternal;

    iput-object p2, p0, Lcom/android/server/PinnerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 22
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p2

    .line 23
    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/server/PinnerService;->mUserManager:Landroid/os/UserManager;

    .line 24
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 25
    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 28
    :try_start_0
    new-instance v1, Lcom/android/server/PinnerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/PinnerService$4;-><init>(Lcom/android/server/PinnerService;)V

    const/16 v2, 0xa

    invoke-interface {p2, v1, v2, p1, v0}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 29
    const-string v0, "PinnerService"

    const-string v1, "Failed to register uid observer"

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    :goto_0
    const-string/jumbo p2, "user_setup_complete"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 31
    iget-object v0, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Lcom/android/server/PinnerService$3;

    invoke-direct {v1, p0, p2}, Lcom/android/server/PinnerService$3;-><init>(Lcom/android/server/PinnerService;Landroid/net/Uri;)V

    const/4 v2, -0x1

    invoke-virtual {v0, p2, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 32
    iget-object p1, p0, Lcom/android/server/PinnerService;->mDeviceConfigInterface:Landroid/provider/DeviceConfigInterface;

    new-instance p2, Landroid/os/HandlerExecutor;

    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    invoke-direct {p2, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/server/PinnerService;->mDeviceConfigAnonSizeListener:Lcom/android/server/PinnerService$2;

    const-string/jumbo v0, "runtime_native"

    invoke-interface {p1, v0, p2, p0}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public static getNameForKey(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 9
    const-string p0, ""

    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string p0, "Assistant"

    .line 14
    return-object p0

    .line 15
    :cond_1
    const-string p0, "Home"

    .line 17
    return-object p0

    .line 18
    :cond_2
    const-string p0, "Camera"

    .line 20
    return-object p0
.end method

.method public static maybeOpenPinMetaInZip(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/server/PinnerService;->PROP_PIN_PINLIST:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    :cond_0
    const-string/jumbo v0, "pinlist.meta"

    .line 10
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 16
    const-string v0, "assets/pinlist.meta"

    .line 18
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 21
    move-result-object v0

    .line 22
    :cond_1
    const-string v2, "\": pinning as blob"

    .line 24
    const-string v3, "PinnerService"

    .line 26
    if-eqz v0, :cond_2

    .line 28
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 31
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    const-string/jumbo v4, "error reading pin metadata \""

    .line 39
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    invoke-static {v3, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const-string p0, "Could not find pinlist.meta for \""

    .line 58
    invoke-static {p0, p1, v2, v3}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :goto_0
    return-object v1
.end method

.method public static pinFileInternal(ILjava/lang/String;Z)Lcom/android/server/PinnerService$PinnedFile;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 4
    :try_start_0
    new-instance p2, Ljava/util/zip/ZipFile;

    .line 6
    invoke-direct {p2, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    goto :goto_3

    .line 10
    :catch_0
    move-exception p2

    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    const-string/jumbo v2, "could not open \""

    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v2, "\" as zip: pinning as blob"

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    const-string v2, "PinnerService"

    .line 36
    invoke-static {v2, v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    goto :goto_2

    .line 40
    :goto_1
    move-object p2, v0

    .line 41
    goto :goto_7

    .line 42
    :cond_0
    :goto_2
    move-object p2, v0

    .line 43
    :goto_3
    if-eqz p2, :cond_1

    .line 45
    :try_start_2
    invoke-static {p2, p1}, Lcom/android/server/PinnerService;->maybeOpenPinMetaInZip(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;

    .line 48
    move-result-object v0

    .line 49
    goto :goto_4

    .line 50
    :catchall_1
    move-exception p0

    .line 51
    goto :goto_7

    .line 52
    :cond_1
    :goto_4
    if-eqz v0, :cond_2

    .line 54
    const/4 v1, 0x1

    .line 55
    goto :goto_5

    .line 56
    :cond_2
    const/4 v1, 0x0

    .line 57
    :goto_5
    if-eqz v1, :cond_3

    .line 59
    new-instance v2, Lcom/android/server/PinnerService$PinRangeSourceStream;

    .line 61
    invoke-direct {v2, v0}, Lcom/android/server/PinnerService$PinRangeSourceStream;-><init>(Ljava/io/InputStream;)V

    .line 64
    goto :goto_6

    .line 65
    :cond_3
    new-instance v2, Lcom/android/server/PinnerService$PinRangeSourceStatic;

    .line 67
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v3, 0x0

    .line 71
    iput-boolean v3, v2, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mDone:Z

    .line 73
    :goto_6
    invoke-static {p1, p0, v2}, Lcom/android/server/PinnerService;->pinFileRanges(Ljava/lang/String;ILcom/android/server/PinnerService$PinRangeSource;)Lcom/android/server/PinnerService$PinnedFile;

    .line 76
    move-result-object p0

    .line 77
    if-eqz p0, :cond_4

    .line 79
    iput-boolean v1, p0, Lcom/android/server/PinnerService$PinnedFile;->used_pinlist:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 81
    :cond_4
    invoke-static {v0}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    .line 84
    invoke-static {p2}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    .line 87
    return-object p0

    .line 88
    :goto_7
    invoke-static {v0}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    .line 91
    invoke-static {p2}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    .line 94
    throw p0
.end method

.method public static pinFileRanges(Ljava/lang/String;ILcom/android/server/PinnerService$PinRangeSource;)Lcom/android/server/PinnerService$PinnedFile;
    .locals 20

    .line 1
    move-object/from16 v7, p0

    .line 3
    sget v0, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    .line 5
    new-instance v1, Ljava/io/FileDescriptor;

    .line 7
    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 10
    const/4 v2, 0x0

    .line 11
    const-wide/16 v8, 0x0

    .line 13
    const-wide/16 v3, -0x1

    .line 15
    :try_start_0
    sget v5, Landroid/system/OsConstants;->O_RDONLY:I

    .line 17
    sget v6, Landroid/system/OsConstants;->O_CLOEXEC:I

    .line 19
    or-int/2addr v5, v6

    .line 20
    invoke-static {v7, v5, v2}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    .line 23
    move-result-object v19
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 24
    :try_start_1
    invoke-static/range {v19 .. v19}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    .line 27
    move-result-object v1

    .line 28
    iget-wide v5, v1, Landroid/system/StructStat;->st_size:J

    .line 30
    const-wide/32 v10, 0x7fffffff

    .line 33
    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 36
    move-result-wide v5
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 37
    long-to-int v6, v5

    .line 38
    int-to-long v12, v6

    .line 39
    :try_start_2
    sget v14, Landroid/system/OsConstants;->PROT_READ:I

    .line 41
    sget v15, Landroid/system/OsConstants;->MAP_SHARED:I

    .line 43
    const-wide/16 v17, 0x0

    .line 45
    const-wide/16 v10, 0x0

    .line 47
    move-object/from16 v16, v19

    .line 49
    invoke-static/range {v10 .. v18}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    .line 52
    move-result-wide v10
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 53
    :try_start_3
    new-instance v1, Lcom/android/server/PinnerService$PinRange;

    .line 55
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 58
    rem-int v3, p1, v0
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 60
    if-eqz v3, :cond_0

    .line 62
    :try_start_4
    rem-int v3, p1, v0

    .line 64
    sub-int v3, p1, v3

    .line 66
    :goto_0
    move v4, v2

    .line 67
    goto :goto_3

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    move v2, v6

    .line 70
    move-wide v3, v10

    .line 71
    :goto_1
    move-object/from16 v1, v19

    .line 73
    goto/16 :goto_c

    .line 75
    :catch_0
    move-exception v0

    .line 76
    move v2, v6

    .line 77
    move-wide v3, v10

    .line 78
    :goto_2
    move-object/from16 v1, v19

    .line 80
    goto/16 :goto_b

    .line 82
    :cond_0
    move/from16 v3, p1

    .line 84
    goto :goto_0

    .line 85
    :goto_3
    if-ge v4, v3, :cond_3

    .line 87
    move-object/from16 v5, p2

    .line 89
    invoke-virtual {v5, v1}, Lcom/android/server/PinnerService$PinRangeSource;->read(Lcom/android/server/PinnerService$PinRange;)Z

    .line 92
    move-result v12

    .line 93
    if-eqz v12, :cond_3

    .line 95
    iget v12, v1, Lcom/android/server/PinnerService$PinRange;->start:I

    .line 97
    iget v13, v1, Lcom/android/server/PinnerService$PinRange;->length:I

    .line 99
    invoke-static {v12, v6}, Ljava/lang/Math;->min(II)I

    .line 102
    move-result v12

    .line 103
    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    .line 106
    move-result v12

    .line 107
    sub-int v14, v6, v12

    .line 109
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    .line 112
    move-result v13

    .line 113
    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    .line 116
    move-result v13

    .line 117
    sub-int v14, v3, v4

    .line 119
    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    .line 122
    move-result v13

    .line 123
    rem-int v15, v12, v0

    .line 125
    add-int/2addr v13, v15

    .line 126
    rem-int v15, v12, v0

    .line 128
    sub-int/2addr v12, v15

    .line 129
    rem-int v15, v13, v0

    .line 131
    if-eqz v15, :cond_1

    .line 133
    rem-int v15, v13, v0

    .line 135
    sub-int v15, v0, v15

    .line 137
    add-int/2addr v13, v15

    .line 138
    :cond_1
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    .line 141
    move-result v13

    .line 142
    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    .line 145
    move-result v13

    .line 146
    if-lez v13, :cond_2

    .line 148
    int-to-long v14, v12

    .line 149
    add-long/2addr v14, v10

    .line 150
    move/from16 v16, v3

    .line 152
    int-to-long v2, v13

    .line 153
    invoke-static {v14, v15, v2, v3}, Landroid/system/Os;->mlock(JJ)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 156
    goto :goto_4

    .line 157
    :cond_2
    move/from16 v16, v3

    .line 159
    :goto_4
    add-int/2addr v4, v13

    .line 160
    move/from16 v3, v16

    .line 162
    const/4 v2, 0x0

    .line 163
    goto :goto_3

    .line 164
    :cond_3
    :try_start_5
    new-instance v0, Lcom/android/server/PinnerService$PinnedFile;
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 166
    move-object v1, v0

    .line 167
    move v2, v6

    .line 168
    move v3, v4

    .line 169
    move-wide v4, v10

    .line 170
    move v12, v6

    .line 171
    move-object/from16 v6, p0

    .line 173
    :try_start_6
    invoke-direct/range {v1 .. v6}, Lcom/android/server/PinnerService$PinnedFile;-><init>(IIJLjava/lang/String;)V
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 176
    invoke-static/range {v19 .. v19}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/FileDescriptor;)V

    .line 179
    return-object v0

    .line 180
    :catchall_1
    move-exception v0

    .line 181
    :goto_5
    move-wide v3, v10

    .line 182
    :goto_6
    move v2, v12

    .line 183
    goto :goto_1

    .line 184
    :catch_1
    move-exception v0

    .line 185
    :goto_7
    move-wide v3, v10

    .line 186
    :goto_8
    move v2, v12

    .line 187
    goto :goto_2

    .line 188
    :catchall_2
    move-exception v0

    .line 189
    move v12, v6

    .line 190
    goto :goto_5

    .line 191
    :catch_2
    move-exception v0

    .line 192
    move v12, v6

    .line 193
    goto :goto_7

    .line 194
    :catchall_3
    move-exception v0

    .line 195
    move v12, v6

    .line 196
    goto :goto_6

    .line 197
    :catch_3
    move-exception v0

    .line 198
    move v12, v6

    .line 199
    goto :goto_8

    .line 200
    :catchall_4
    move-exception v0

    .line 201
    move-object/from16 v1, v19

    .line 203
    :goto_9
    const/4 v2, 0x0

    .line 204
    goto :goto_c

    .line 205
    :catch_4
    move-exception v0

    .line 206
    move-object/from16 v1, v19

    .line 208
    :goto_a
    const/4 v2, 0x0

    .line 209
    goto :goto_b

    .line 210
    :catchall_5
    move-exception v0

    .line 211
    goto :goto_9

    .line 212
    :catch_5
    move-exception v0

    .line 213
    goto :goto_a

    .line 214
    :goto_b
    :try_start_7
    const-string v5, "PinnerService"

    .line 216
    new-instance v6, Ljava/lang/StringBuilder;

    .line 218
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    const-string v10, "Could not pin file "

    .line 223
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    move-result-object v6

    .line 233
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 236
    invoke-static {v1}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/FileDescriptor;)V

    .line 239
    cmp-long v0, v3, v8

    .line 241
    if-ltz v0, :cond_4

    .line 243
    int-to-long v0, v2

    .line 244
    invoke-static {v3, v4, v0, v1}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    .line 247
    :cond_4
    const/4 v0, 0x0

    .line 248
    return-object v0

    .line 249
    :catchall_6
    move-exception v0

    .line 250
    :goto_c
    invoke-static {v1}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/FileDescriptor;)V

    .line 253
    cmp-long v1, v3, v8

    .line 255
    if-ltz v1, :cond_5

    .line 257
    int-to-long v1, v2

    .line 258
    invoke-static {v3, v4, v1, v2}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    .line 261
    :cond_5
    throw v0
.end method

.method public static safeClose(Ljava/io/Closeable;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 5
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ignoring error closing resource: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PinnerService"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static safeClose(Ljava/io/FileDescriptor;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    iget v0, p0, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->EBADF:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static safeMunmap(JJ)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Landroid/system/Os;->munmap(JJ)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p0

    .line 6
    const-string p1, "PinnerService"

    .line 8
    const-string/jumbo p2, "ignoring error in unmap"

    .line 11
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    :goto_0
    return-void
.end method


# virtual methods
.method public final createPinKeys()Landroid/util/ArraySet;
    .locals 6

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 6
    iget-boolean v1, p0, Lcom/android/server/PinnerService;->mConfiguredToPinCamera:Z

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 11
    iget-object v1, p0, Lcom/android/server/PinnerService;->mDeviceConfigInterface:Landroid/provider/DeviceConfigInterface;

    .line 13
    const-string/jumbo v3, "pinner.pin_camera"

    .line 16
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    move-result v3

    .line 20
    const-string/jumbo v4, "runtime_native_boot"

    .line 23
    const-string/jumbo v5, "pin_camera"

    .line 26
    invoke-interface {v1, v4, v5, v3}, Landroid/provider/DeviceConfigInterface;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_0
    iget v1, p0, Lcom/android/server/PinnerService;->mConfiguredHomePinBytes:I

    .line 42
    if-lez v1, :cond_1

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/PinnerService;->mConfiguredToPinAssistant:Z

    .line 53
    if-eqz p0, :cond_2

    .line 55
    const/4 p0, 0x2

    .line 56
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_2
    return-object v0
.end method

.method public final getAllPinsForGroup(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    .line 4
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/android/server/PinnerService$$ExternalSyntheticLambda3;

    .line 14
    invoke-direct {v1, p1}, Lcom/android/server/PinnerService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 24
    move-result-object p1

    .line 25
    monitor-exit p0

    .line 26
    return-object p1

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p1
.end method

.method public final getApplicationInfoForIntent(ILandroid/content/Intent;Z)Landroid/content/pm/ApplicationInfo;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object v0

    .line 7
    const/high16 v1, 0xd0000

    .line 9
    invoke-virtual {v0, p2, v1, p1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 16
    return-object v2

    .line 17
    :cond_0
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 19
    const-class v4, Lcom/android/internal/app/ResolverActivity;

    .line 21
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 24
    move-result-object v4

    .line 25
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 27
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_1

    .line 33
    iget-object p0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 35
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 37
    return-object p0

    .line 38
    :cond_1
    if-eqz p3, :cond_5

    .line 40
    iget-object p0, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0, p2, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 49
    move-result-object p0

    .line 50
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object p0

    .line 54
    move-object p1, v2

    .line 55
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_4

    .line 61
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 67
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 69
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 71
    iget p3, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 73
    and-int/lit8 p3, p3, 0x1

    .line 75
    if-eqz p3, :cond_2

    .line 77
    if-nez p1, :cond_3

    .line 79
    move-object p1, p2

    .line 80
    goto :goto_0

    .line 81
    :cond_3
    return-object v2

    .line 82
    :cond_4
    return-object p1

    .line 83
    :cond_5
    return-object v2
.end method

.method public final getInfoForKey(II)Landroid/content/pm/ApplicationInfo;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_2

    .line 5
    if-eq p1, v1, :cond_1

    .line 7
    const/4 v0, 0x2

    .line 8
    if-eq p1, v0, :cond_0

    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 14
    const-string v0, "android.intent.action.ASSIST"

    .line 16
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(ILandroid/content/Intent;Z)Landroid/content/pm/ApplicationInfo;

    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/android/server/PinnerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 26
    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 28
    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 30
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 35
    monitor-enter v2

    .line 36
    :try_start_0
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 38
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getHomeIntent()Landroid/content/Intent;

    .line 41
    move-result-object p1

    .line 42
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 46
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(ILandroid/content/Intent;Z)Landroid/content/pm/ApplicationInfo;

    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 56
    throw p0

    .line 57
    :cond_2
    new-instance p1, Landroid/content/Intent;

    .line 59
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    .line 61
    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(ILandroid/content/Intent;Z)Landroid/content/pm/ApplicationInfo;

    .line 67
    move-result-object p1

    .line 68
    if-nez p1, :cond_3

    .line 70
    new-instance p1, Landroid/content/Intent;

    .line 72
    const-string v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 74
    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(ILandroid/content/Intent;Z)Landroid/content/pm/ApplicationInfo;

    .line 80
    move-result-object p1

    .line 81
    :cond_3
    if-nez p1, :cond_4

    .line 83
    new-instance p1, Landroid/content/Intent;

    .line 85
    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(ILandroid/content/Intent;Z)Landroid/content/pm/ApplicationInfo;

    .line 91
    move-result-object p1

    .line 92
    :cond_4
    return-object p1
.end method

.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/PinnerService$BinderService;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/PinnerService$BinderService;-><init>(Lcom/android/server/PinnerService;)V

    .line 6
    iget-object v1, p0, Lcom/android/server/PinnerService;->mInjector:Lcom/android/server/PinnerService$Injector;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    const-string/jumbo v1, "pinner"

    .line 14
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 17
    const-class v0, Lcom/android/server/PinnerService;

    .line 19
    invoke-virtual {p0, v0, p0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 22
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    .line 24
    const/16 v1, 0xfa1

    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/server/PinnerService;->sendPinAppsMessage(I)V

    .line 37
    return-void
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    move-result p1

    .line 5
    iget-object p2, p0, Lcom/android/server/PinnerService;->mUserManager:Landroid/os/UserManager;

    .line 7
    invoke-virtual {p2, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_0

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/PinnerService;->sendPinAppsMessage(I)V

    .line 16
    :cond_0
    return-void
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/server/PinnerService;->mUserManager:Landroid/os/UserManager;

    .line 9
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/PinnerService;->sendPinAppsMessage(I)V

    .line 18
    :cond_0
    return-void
.end method

.method public final pinApp(IIZ)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/server/PinnerService$PinnedApp;

    .line 14
    const/4 v1, -0x1

    .line 15
    if-eqz v0, :cond_0

    .line 17
    iget-boolean v2, v0, Lcom/android/server/PinnerService$PinnedApp;->active:Z

    .line 19
    if-eqz v2, :cond_0

    .line 21
    iget v0, v0, Lcom/android/server/PinnerService$PinnedApp;->uid:I

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto/16 :goto_4

    .line 27
    :cond_0
    move v0, v1

    .line 28
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    if-nez p3, :cond_1

    .line 31
    if-eq v0, v1, :cond_1

    .line 33
    monitor-enter p0

    .line 34
    :try_start_1
    iget-object p2, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object p3

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p2, p3, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :catchall_1
    move-exception p1

    .line 50
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    throw p1

    .line 52
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/PinnerService;->unpinApp(I)V

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/android/server/PinnerService;->getInfoForKey(II)Landroid/content/pm/ApplicationInfo;

    .line 58
    move-result-object p2

    .line 59
    if-eqz p2, :cond_a

    .line 61
    new-instance p3, Lcom/android/server/PinnerService$PinnedApp;

    .line 63
    invoke-direct {p3, p0, p2}, Lcom/android/server/PinnerService$PinnedApp;-><init>(Lcom/android/server/PinnerService;Landroid/content/pm/ApplicationInfo;)V

    .line 66
    monitor-enter p0

    .line 67
    :try_start_2
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 77
    const/4 v0, 0x1

    .line 78
    const/4 v1, 0x0

    .line 79
    if-eqz p1, :cond_4

    .line 81
    if-eq p1, v0, :cond_3

    .line 83
    const/4 v2, 0x2

    .line 84
    if-eq p1, v2, :cond_2

    .line 86
    move v2, v1

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    const/high16 v2, 0x3c00000

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    iget v2, p0, Lcom/android/server/PinnerService;->mConfiguredHomePinBytes:I

    .line 93
    goto :goto_1

    .line 94
    :cond_4
    const/high16 v2, 0x5000000

    .line 96
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    .line 98
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 101
    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 103
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 108
    if-eqz v4, :cond_5

    .line 110
    array-length v5, v4

    .line 111
    move v6, v1

    .line 112
    :goto_2
    if-ge v6, v5, :cond_5

    .line 114
    aget-object v7, v4, v6

    .line 116
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v6, v6, 0x1

    .line 121
    goto :goto_2

    .line 122
    :cond_5
    if-ne p1, v0, :cond_6

    .line 124
    invoke-static {}, Lcom/android/server/flags/Flags;->skipHomeArtPins()Z

    .line 127
    move-result v4

    .line 128
    if-eqz v4, :cond_6

    .line 130
    move v1, v0

    .line 131
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 134
    move-result-object v3

    .line 135
    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    move-result v4

    .line 139
    if-eqz v4, :cond_a

    .line 141
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    move-result-object v4

    .line 145
    check-cast v4, Ljava/lang/String;

    .line 147
    if-gtz v2, :cond_8

    .line 149
    const-string v5, "PinnerService"

    .line 151
    const-string v6, "Reached to the pin size limit. Skipping: "

    .line 153
    invoke-static {v6, v4, v5}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    goto :goto_3

    .line 157
    :cond_8
    iget-object v5, p0, Lcom/android/server/PinnerService;->mInjector:Lcom/android/server/PinnerService$Injector;

    .line 159
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    invoke-static {v2, v4, v0}, Lcom/android/server/PinnerService;->pinFileInternal(ILjava/lang/String;Z)Lcom/android/server/PinnerService$PinnedFile;

    .line 165
    move-result-object v5

    .line 166
    if-nez v5, :cond_9

    .line 168
    const-string v5, "PinnerService"

    .line 170
    const-string v6, "Failed to pin "

    .line 172
    invoke-static {v6, v4, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    goto :goto_3

    .line 176
    :cond_9
    invoke-static {p1}, Lcom/android/server/PinnerService;->getNameForKey(I)Ljava/lang/String;

    .line 179
    move-result-object v6

    .line 180
    iput-object v6, v5, Lcom/android/server/PinnerService$PinnedFile;->groupName:Ljava/lang/String;

    .line 182
    monitor-enter p0

    .line 183
    :try_start_3
    iget-object v6, p3, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    .line 185
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v6, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    .line 190
    iget-object v7, v5, Lcom/android/server/PinnerService$PinnedFile;->fileName:Ljava/lang/String;

    .line 192
    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 196
    iget v6, v5, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    .line 198
    sub-int/2addr v2, v6

    .line 199
    iget-object v6, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 201
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    move-result v4

    .line 205
    if-eqz v4, :cond_7

    .line 207
    if-nez v1, :cond_7

    .line 209
    const v4, 0x7fffffff

    .line 212
    invoke-virtual {p0, v5, v4, p2}, Lcom/android/server/PinnerService;->pinOptimizedDexDependencies(Lcom/android/server/PinnerService$PinnedFile;ILandroid/content/pm/ApplicationInfo;)V

    .line 215
    goto :goto_3

    .line 216
    :catchall_2
    move-exception p1

    .line 217
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 218
    throw p1

    .line 219
    :catchall_3
    move-exception p1

    .line 220
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 221
    throw p1

    .line 222
    :cond_a
    return-void

    .line 223
    :goto_4
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 224
    throw p1
.end method

.method public final pinAppsInternal(IZ)V
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/server/PinnerService;->createPinKeys()Landroid/util/ArraySet;

    .line 6
    move-result-object p2

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    .line 10
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 16
    const-string p1, "PinnerService"

    .line 18
    const-string p2, "Attempted to update a list of apps, but apps were already pinned. Skipping."

    .line 20
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iput-object p2, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    .line 29
    monitor-exit p0

    .line 30
    goto :goto_1

    .line 31
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p1

    .line 33
    :cond_1
    :goto_1
    monitor-enter p0

    .line 34
    :try_start_1
    iget-object p2, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    monitor-exit p0

    .line 37
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x1

    .line 42
    sub-int/2addr v0, v1

    .line 43
    :goto_2
    if-ltz v0, :cond_2

    .line 45
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Ljava/lang/Integer;

    .line 51
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 54
    move-result v2

    .line 55
    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/PinnerService;->pinApp(IIZ)V

    .line 58
    add-int/lit8 v0, v0, -0x1

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    return-void

    .line 62
    :catchall_1
    move-exception p1

    .line 63
    monitor-exit p0

    .line 64
    throw p1
.end method

.method public final pinOptimizedDexDependencies(Lcom/android/server/PinnerService$PinnedFile;ILandroid/content/pm/ApplicationInfo;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/android/server/PinnerService$PinnedFile;->fileName:Ljava/lang/String;

    .line 3
    const-string v1, ".jar"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    iget-object v1, p1, Lcom/android/server/PinnerService$PinnedFile;->fileName:Ljava/lang/String;

    .line 11
    const-string v2, ".apk"

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 16
    move-result v1

    .line 17
    or-int/2addr v0, v1

    .line 18
    if-eqz v0, :cond_4

    .line 20
    const/4 v0, 0x0

    .line 21
    if-eqz p3, :cond_0

    .line 23
    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object p3, v0

    .line 27
    :goto_0
    const/4 v1, 0x0

    .line 28
    if-nez p3, :cond_1

    .line 30
    sget-object p3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 32
    aget-object p3, p3, v1

    .line 34
    :cond_1
    invoke-static {p3}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object p3

    .line 38
    :try_start_0
    iget-object v2, p1, Lcom/android/server/PinnerService$PinnedFile;->fileName:Ljava/lang/String;

    .line 40
    invoke-static {v2, p3}, Ldalvik/system/DexFile;->getDexFileOutputPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 43
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :catch_0
    if-nez v0, :cond_2

    .line 46
    return-void

    .line 47
    :cond_2
    array-length p3, v0

    .line 48
    move v2, v1

    .line 49
    :goto_1
    if-ge v2, p3, :cond_4

    .line 51
    aget-object v3, v0, v2

    .line 53
    invoke-virtual {p0, v3}, Lcom/android/server/PinnerService;->unpinFile(Ljava/lang/String;)V

    .line 56
    iget-object v4, p0, Lcom/android/server/PinnerService;->mInjector:Lcom/android/server/PinnerService$Injector;

    .line 58
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-static {p2, v3, v1}, Lcom/android/server/PinnerService;->pinFileInternal(ILjava/lang/String;Z)Lcom/android/server/PinnerService$PinnedFile;

    .line 64
    move-result-object v4

    .line 65
    if-nez v4, :cond_3

    .line 67
    const-string p0, "PinnerService"

    .line 69
    const-string p1, "Failed to pin ART file = "

    .line 71
    invoke-static {p1, v3, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void

    .line 75
    :cond_3
    iget-object v3, p1, Lcom/android/server/PinnerService$PinnedFile;->groupName:Ljava/lang/String;

    .line 77
    iput-object v3, v4, Lcom/android/server/PinnerService$PinnedFile;->groupName:Ljava/lang/String;

    .line 79
    iget-object v3, p1, Lcom/android/server/PinnerService$PinnedFile;->pinnedDeps:Ljava/util/ArrayList;

    .line 81
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget v3, v4, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    .line 86
    sub-int/2addr p2, v3

    .line 87
    monitor-enter p0

    .line 88
    :try_start_1
    iget-object v3, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    .line 90
    iget-object v5, v4, Lcom/android/server/PinnerService$PinnedFile;->fileName:Ljava/lang/String;

    .line 92
    invoke-virtual {v3, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    monitor-exit p0

    .line 96
    add-int/lit8 v2, v2, 0x1

    .line 98
    goto :goto_1

    .line 99
    :catchall_0
    move-exception p1

    .line 100
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    throw p1

    .line 102
    :cond_4
    return-void
.end method

.method public final refreshPinAnonConfig()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/PinnerService;->mDeviceConfigInterface:Landroid/provider/DeviceConfigInterface;

    .line 5
    sget-wide v2, Lcom/android/server/PinnerService;->DEFAULT_ANON_SIZE:J

    .line 7
    const-string/jumbo v4, "runtime_native"

    .line 10
    const-string/jumbo v5, "pin_shared_anon_size"

    .line 13
    invoke-interface {v1, v4, v5, v2, v3}, Landroid/provider/DeviceConfigInterface;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 16
    move-result-wide v1

    .line 17
    const-wide v3, 0x80000000L

    .line 22
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 25
    move-result-wide v1

    .line 26
    const-wide/16 v3, 0x0

    .line 28
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 31
    move-result-wide v1

    .line 32
    iget-wide v5, v0, Lcom/android/server/PinnerService;->mPinAnonSize:J

    .line 34
    cmp-long v5, v1, v5

    .line 36
    if-eqz v5, :cond_a

    .line 38
    iput-wide v1, v0, Lcom/android/server/PinnerService;->mPinAnonSize:J

    .line 40
    cmp-long v5, v1, v3

    .line 42
    const-string v6, "PinnerService"

    .line 44
    if-nez v5, :cond_1

    .line 46
    const-string/jumbo v1, "pinAnonRegion: releasing pinned region"

    .line 49
    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-wide v1, v0, Lcom/android/server/PinnerService;->mPinAnonAddress:J

    .line 54
    cmp-long v5, v1, v3

    .line 56
    if-eqz v5, :cond_0

    .line 58
    iget-wide v5, v0, Lcom/android/server/PinnerService;->mCurrentlyPinnedAnonSize:J

    .line 60
    invoke-static {v1, v2, v5, v6}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    .line 63
    :cond_0
    iput-wide v3, v0, Lcom/android/server/PinnerService;->mPinAnonAddress:J

    .line 65
    iput-wide v3, v0, Lcom/android/server/PinnerService;->mCurrentlyPinnedAnonSize:J

    .line 67
    goto/16 :goto_4

    .line 69
    :cond_1
    sget v5, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    .line 71
    int-to-long v7, v5

    .line 72
    rem-long v7, v1, v7

    .line 74
    cmp-long v5, v7, v3

    .line 76
    if-eqz v5, :cond_2

    .line 78
    sub-long/2addr v1, v7

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    .line 81
    const-string/jumbo v7, "pinAnonRegion: aligning size to "

    .line 84
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v5

    .line 94
    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_2
    iget-wide v7, v0, Lcom/android/server/PinnerService;->mPinAnonAddress:J

    .line 99
    cmp-long v5, v7, v3

    .line 101
    if-eqz v5, :cond_5

    .line 103
    iget-wide v7, v0, Lcom/android/server/PinnerService;->mCurrentlyPinnedAnonSize:J

    .line 105
    cmp-long v5, v7, v1

    .line 107
    if-nez v5, :cond_3

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    .line 111
    const-string/jumbo v3, "pinAnonRegion: already pinned region of size "

    .line 114
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v0

    .line 124
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    goto/16 :goto_4

    .line 129
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 131
    const-string/jumbo v7, "pinAnonRegion: resetting pinned region for new size "

    .line 134
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object v5

    .line 144
    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-wide v7, v0, Lcom/android/server/PinnerService;->mPinAnonAddress:J

    .line 149
    cmp-long v5, v7, v3

    .line 151
    if-eqz v5, :cond_4

    .line 153
    iget-wide v9, v0, Lcom/android/server/PinnerService;->mCurrentlyPinnedAnonSize:J

    .line 155
    invoke-static {v7, v8, v9, v10}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    .line 158
    :cond_4
    iput-wide v3, v0, Lcom/android/server/PinnerService;->mPinAnonAddress:J

    .line 160
    iput-wide v3, v0, Lcom/android/server/PinnerService;->mCurrentlyPinnedAnonSize:J

    .line 162
    :cond_5
    :try_start_0
    sget v5, Landroid/system/OsConstants;->PROT_READ:I

    .line 164
    sget v7, Landroid/system/OsConstants;->PROT_WRITE:I

    .line 166
    or-int v11, v5, v7

    .line 168
    sget v5, Landroid/system/OsConstants;->MAP_SHARED:I

    .line 170
    sget v7, Landroid/system/OsConstants;->MAP_ANONYMOUS:I

    .line 172
    or-int v12, v5, v7

    .line 174
    new-instance v13, Ljava/io/FileDescriptor;

    .line 176
    invoke-direct {v13}, Ljava/io/FileDescriptor;-><init>()V

    .line 179
    const-wide/16 v14, 0x0

    .line 181
    const-wide/16 v7, 0x0

    .line 183
    move-wide v9, v1

    .line 184
    invoke-static/range {v7 .. v15}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    .line 187
    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 188
    :try_start_1
    const-class v5, Lsun/misc/Unsafe;

    .line 190
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 193
    move-result-object v9

    .line 194
    array-length v10, v9

    .line 195
    const/4 v11, 0x0

    .line 196
    const/4 v12, 0x0

    .line 197
    move v13, v11

    .line 198
    move-object v14, v12

    .line 199
    :goto_0
    const/4 v15, 0x1

    .line 200
    if-ge v13, v10, :cond_7

    .line 202
    aget-object v3, v9, v13

    .line 204
    invoke-virtual {v3, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 207
    invoke-virtual {v3, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    move-result-object v3

    .line 211
    invoke-virtual {v5, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 214
    move-result v4

    .line 215
    if-eqz v4, :cond_6

    .line 217
    invoke-virtual {v5, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    move-result-object v3

    .line 221
    move-object v14, v3

    .line 222
    check-cast v14, Lsun/misc/Unsafe;

    .line 224
    goto :goto_1

    .line 225
    :catchall_0
    move-exception v0

    .line 226
    const-wide/16 v3, 0x0

    .line 228
    goto/16 :goto_3

    .line 230
    :catch_0
    move-exception v0

    .line 231
    goto :goto_2

    .line 232
    :cond_6
    :goto_1
    add-int/lit8 v13, v13, 0x1

    .line 234
    const-wide/16 v3, 0x0

    .line 236
    goto :goto_0

    .line 237
    :cond_7
    if-eqz v14, :cond_8

    .line 239
    const-string/jumbo v3, "setMemory"

    .line 242
    const/4 v4, 0x3

    .line 243
    new-array v4, v4, [Ljava/lang/Class;

    .line 245
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 247
    aput-object v9, v4, v11

    .line 249
    aput-object v9, v4, v15

    .line 251
    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 253
    const/4 v10, 0x2

    .line 254
    aput-object v9, v4, v10

    .line 256
    invoke-virtual {v5, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 259
    move-result-object v3

    .line 260
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 263
    move-result-object v4

    .line 264
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 267
    move-result-object v5

    .line 268
    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 271
    move-result-object v9

    .line 272
    filled-new-array {v4, v5, v9}, [Ljava/lang/Object;

    .line 275
    move-result-object v4

    .line 276
    invoke-virtual {v3, v14, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-static {v7, v8, v1, v2}, Landroid/system/Os;->mlock(JJ)V

    .line 282
    iput-wide v1, v0, Lcom/android/server/PinnerService;->mCurrentlyPinnedAnonSize:J

    .line 284
    iput-wide v7, v0, Lcom/android/server/PinnerService;->mPinAnonAddress:J

    .line 286
    const-wide/16 v7, -0x1

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    .line 290
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    const-string/jumbo v4, "pinAnonRegion success, size="

    .line 296
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    iget-wide v4, v0, Lcom/android/server/PinnerService;->mCurrentlyPinnedAnonSize:J

    .line 301
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    move-result-object v0

    .line 308
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    goto :goto_4

    .line 312
    :cond_8
    new-instance v0, Ljava/lang/Exception;

    .line 314
    const-string v3, "Couldn\'t get Unsafe"

    .line 316
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 319
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    :catchall_1
    move-exception v0

    .line 321
    const-wide/16 v3, 0x0

    .line 323
    const-wide/16 v7, 0x0

    .line 325
    goto :goto_3

    .line 326
    :catch_1
    move-exception v0

    .line 327
    const-wide/16 v7, 0x0

    .line 329
    :goto_2
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 331
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    const-string v4, "Could not pin anon region of size "

    .line 336
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    move-result-object v3

    .line 346
    invoke-static {v6, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 349
    const-wide/16 v3, 0x0

    .line 351
    cmp-long v0, v7, v3

    .line 353
    if-ltz v0, :cond_a

    .line 355
    invoke-static {v7, v8, v1, v2}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    .line 358
    goto :goto_4

    .line 359
    :goto_3
    cmp-long v3, v7, v3

    .line 361
    if-ltz v3, :cond_9

    .line 363
    invoke-static {v7, v8, v1, v2}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    .line 366
    :cond_9
    throw v0

    .line 367
    :cond_a
    :goto_4
    return-void
.end method

.method public final sendPinAppsMessage(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/PinnerService$$ExternalSyntheticLambda1;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/server/PinnerService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p1

    .line 11
    invoke-static {v0, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 14
    move-result-object p1

    .line 15
    iget-object p0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    .line 17
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 20
    return-void
.end method

.method public final unpinApp(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/server/PinnerService$PinnedApp;

    .line 14
    if-nez v0, :cond_0

    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    .line 31
    iget-object v0, v0, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    .line 33
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 36
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object p1

    .line 41
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 47
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/android/server/PinnerService$PinnedFile;

    .line 53
    iget-object v0, v0, Lcom/android/server/PinnerService$PinnedFile;->fileName:Ljava/lang/String;

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/server/PinnerService;->unpinFile(Ljava/lang/String;)V

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    return-void

    .line 60
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw p1
.end method

.method public final unpinFile(Ljava/lang/String;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    .line 4
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/android/server/PinnerService$PinnedFile;

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    if-nez p1, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/PinnerService$PinnedFile;->close()V

    .line 17
    monitor-enter p0

    .line 18
    :try_start_1
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    .line 20
    iget-object v1, p1, Lcom/android/server/PinnerService$PinnedFile;->fileName:Ljava/lang/String;

    .line 22
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object p1, p1, Lcom/android/server/PinnerService$PinnedFile;->pinnedDeps:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object p1

    .line 31
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/android/server/PinnerService$PinnedFile;

    .line 43
    if-nez v0, :cond_1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    .line 48
    iget-object v0, v0, Lcom/android/server/PinnerService$PinnedFile;->fileName:Ljava/lang/String;

    .line 50
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    throw p1

    .line 60
    :catchall_1
    move-exception p1

    .line 61
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 62
    throw p1
.end method

.method public final update(Landroid/util/ArraySet;Z)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 12
    move-result v2

    .line 13
    add-int/lit8 v2, v2, -0x1

    .line 15
    :goto_0
    if-ltz v2, :cond_1

    .line 17
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Ljava/lang/Integer;

    .line 23
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 26
    move-result v4

    .line 27
    invoke-virtual {p0, v4, v1}, Lcom/android/server/PinnerService;->getInfoForKey(II)Landroid/content/pm/ApplicationInfo;

    .line 30
    move-result-object v4

    .line 31
    if-eqz v4, :cond_0

    .line 33
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 35
    invoke-virtual {p1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_0

    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    .line 43
    const-string v6, "Updating pinned files for "

    .line 45
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 50
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v4, " force="

    .line 55
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v4

    .line 65
    const-string v5, "PinnerService"

    .line 67
    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v4, Lcom/android/server/PinnerService$$ExternalSyntheticLambda2;

    .line 72
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object v5

    .line 79
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 82
    move-result-object v6

    .line 83
    invoke-static {v4, p0, v3, v5, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 86
    move-result-object v3

    .line 87
    iget-object v4, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    .line 89
    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 92
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 94
    goto :goto_0

    .line 95
    :cond_1
    return-void

    .line 96
    :catchall_0
    move-exception p1

    .line 97
    monitor-exit p0

    .line 98
    throw p1
.end method

.method public final updateActiveState(IZ)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    .line 4
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 7
    move-result v0

    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 10
    :goto_0
    if-ltz v0, :cond_1

    .line 12
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    .line 14
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/server/PinnerService$PinnedApp;

    .line 20
    iget v2, v1, Lcom/android/server/PinnerService$PinnedApp;->uid:I

    .line 22
    if-ne v2, p1, :cond_0

    .line 24
    iput-boolean p2, v1, Lcom/android/server/PinnerService$PinnedApp;->active:Z

    .line 26
    goto :goto_1

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_2

    .line 29
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p1
.end method
