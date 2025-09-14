.class public final Lcom/android/server/timedetector/ServerFlags;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final OPTIONAL_FALSE:Ljava/util/Optional;

.field public static final OPTIONAL_TRUE:Ljava/util/Optional;

.field public static final SLOCK:Ljava/lang/Object;

.field public static sInstance:Lcom/android/server/timedetector/ServerFlags;


# instance fields
.field public final mListeners:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/timedetector/ServerFlags;->OPTIONAL_TRUE:Ljava/util/Optional;

    .line 8
    .line 9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/android/server/timedetector/ServerFlags;->OPTIONAL_FALSE:Ljava/util/Optional;

    .line 16
    .line 17
    new-instance v0, Ljava/lang/Object;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/android/server/timedetector/ServerFlags;->SLOCK:Ljava/lang/Object;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
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
    iput-object v0, p0, Lcom/android/server/timedetector/ServerFlags;->mListeners:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v0, Lcom/android/server/timedetector/ServerFlags$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/android/server/timedetector/ServerFlags$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/ServerFlags;)V

    .line 18
    .line 19
    .line 20
    const-string/jumbo p0, "system_time"

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;
    .locals 4

    .line 1
    const-string/jumbo v0, "system_time"

    .line 2
    .line 3
    .line 4
    const-wide/16 v1, -0x1

    .line 5
    .line 6
    invoke-static {v0, p0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long p0, v0, v2

    .line 13
    .line 14
    if-gez p0, :cond_0

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/timedetector/ServerFlags;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/timedetector/ServerFlags;->SLOCK:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/timedetector/ServerFlags;->sInstance:Lcom/android/server/timedetector/ServerFlags;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/timedetector/ServerFlags;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/android/server/timedetector/ServerFlags;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/android/server/timedetector/ServerFlags;->sInstance:Lcom/android/server/timedetector/ServerFlags;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/timedetector/ServerFlags;->sInstance:Lcom/android/server/timedetector/ServerFlags;

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method


# virtual methods
.method public final addListener(Lcom/android/server/timezonedetector/StateChangeListener;Ljava/util/Set;)V
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/android/server/timedetector/ServerFlags;->mListeners:Landroid/util/ArrayMap;

    .line 10
    .line 11
    monitor-enter p2

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/timedetector/ServerFlags;->mListeners:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    monitor-exit p2

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method
