.class public final Lcom/android/server/CountryDetectorService;
.super Landroid/location/ICountryDetector$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCountryDetector:Lcom/android/server/location/countrydetector/CountryDetectorBase;

.field public final mHandler:Landroid/os/Handler;

.field public mLocationBasedDetectorListener:Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda0;

.field public final mReceivers:Ljava/util/HashMap;

.field public mSystemReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroid/location/ICountryDetector$Stub;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    .line 4
    iput-object p1, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final addCountryListener(Landroid/location/ICountryListener;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    .line 3
    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    new-instance v1, Lcom/android/server/CountryDetectorService$Receiver;

    .line 10
    invoke-direct {v1, p0, p1}, Lcom/android/server/CountryDetectorService$Receiver;-><init>(Lcom/android/server/CountryDetectorService;Landroid/location/ICountryListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    invoke-interface {p1}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 21
    invoke-virtual {p0}, Lcom/android/server/CountryDetectorService;->detectCountry()Landroid/location/Country;

    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_0

    .line 27
    invoke-interface {p1, v2}, Landroid/location/ICountryListener;->onCountryDetected(Landroid/location/Country;)V

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_3

    .line 33
    :catch_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    .line 37
    invoke-interface {p1}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object p1, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    .line 46
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 49
    move-result p1

    .line 50
    const/4 v1, 0x1

    .line 51
    if-ne p1, v1, :cond_1

    .line 53
    const-string p1, "CountryDetector"

    .line 55
    const-string v1, "The first listener is added"

    .line 57
    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object p1, p0, Lcom/android/server/CountryDetectorService;->mLocationBasedDetectorListener:Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda0;

    .line 62
    iget-object v1, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    .line 64
    new-instance v2, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda1;

    .line 66
    const/4 v3, 0x0

    .line 67
    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/CountryDetectorService;Ljava/lang/Object;I)V

    .line 70
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    goto :goto_2

    .line 74
    :goto_1
    :try_start_2
    const-string p1, "CountryDetector"

    .line 76
    const-string/jumbo v1, "linkToDeath failed:"

    .line 79
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    :cond_1
    :goto_2
    monitor-exit v0

    .line 83
    return-void

    .line 84
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    throw p0

    .line 86
    :cond_2
    new-instance p0, Landroid/os/RemoteException;

    .line 88
    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    .line 91
    throw p0
.end method

.method public final detectCountry()Landroid/location/Country;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/countrydetector/CountryDetectorBase;

    .line 9
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/CountryDetectorBase;->detectCountry()Landroid/location/Country;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    .line 3
    const-string p1, "CountryDetector"

    .line 5
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 8
    return-void
.end method

.method public getCountryDetector()Lcom/android/server/location/countrydetector/CountryDetectorBase;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/countrydetector/CountryDetectorBase;

    .line 3
    return-object p0
.end method

.method public initialize()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    .line 3
    const v1, 0x10402fe

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v1

    .line 14
    const-string v2, "CountryDetector"

    .line 16
    if-nez v1, :cond_0

    .line 18
    const-string v1, "Using custom country detector class: "

    .line 20
    invoke-static {v1, v0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 26
    move-result-object v0

    .line 27
    const-class v1, Lcom/android/server/location/countrydetector/CountryDetectorBase;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x1

    .line 34
    new-array v1, v1, [Ljava/lang/Class;

    .line 36
    const-class v3, Landroid/content/Context;

    .line 38
    const/4 v4, 0x0

    .line 39
    aput-object v3, v1, v4

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    .line 47
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/android/server/location/countrydetector/CountryDetectorBase;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    const-string v0, "Could not instantiate the custom country detector class"

    .line 60
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v0, 0x0

    .line 64
    :goto_0
    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/countrydetector/CountryDetectorBase;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/countrydetector/CountryDetectorBase;

    .line 68
    if-nez v0, :cond_1

    .line 70
    const-string v0, "Using default country detector"

    .line 72
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    .line 77
    iget-object v1, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    .line 79
    invoke-direct {v0, v1}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;-><init>(Landroid/content/Context;)V

    .line 82
    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/countrydetector/CountryDetectorBase;

    .line 84
    :cond_1
    new-instance v0, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda0;

    .line 86
    invoke-direct {v0, p0}, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/CountryDetectorService;)V

    .line 89
    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mLocationBasedDetectorListener:Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda0;

    .line 91
    return-void
.end method

.method public isSystemReady()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    .line 3
    return p0
.end method

.method public final removeCountryListener(Landroid/location/ICountryListener;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p1}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/CountryDetectorService;->removeListener(Landroid/os/IBinder;)V

    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    .line 15
    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    .line 18
    throw p0
.end method

.method public final removeListener(Landroid/os/IBinder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    .line 11
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 17
    iget-object p1, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    .line 19
    new-instance v1, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda1;

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/CountryDetectorService;Ljava/lang/Object;I)V

    .line 26
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    const-string p0, "CountryDetector"

    .line 31
    const-string p1, "No listener is left"

    .line 33
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method
