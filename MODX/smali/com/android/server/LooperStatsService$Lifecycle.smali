.class public final Lcom/android/server/LooperStatsService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/LooperStatsService;

.field public final mSettingsObserver:Lcom/android/server/LooperStatsService$SettingsObserver;

.field public final mStats:Lcom/android/internal/os/LooperStats;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance p1, Lcom/android/internal/os/LooperStats;

    .line 6
    const/16 v0, 0x3e8

    .line 8
    const/16 v1, 0x5dc

    .line 10
    invoke-direct {p1, v0, v1}, Lcom/android/internal/os/LooperStats;-><init>(II)V

    .line 13
    iput-object p1, p0, Lcom/android/server/LooperStatsService$Lifecycle;->mStats:Lcom/android/internal/os/LooperStats;

    .line 15
    new-instance v0, Lcom/android/server/LooperStatsService;

    .line 17
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1, p1}, Lcom/android/server/LooperStatsService;-><init>(Landroid/content/Context;Lcom/android/internal/os/LooperStats;)V

    .line 24
    iput-object v0, p0, Lcom/android/server/LooperStatsService$Lifecycle;->mService:Lcom/android/server/LooperStatsService;

    .line 26
    new-instance p1, Lcom/android/server/LooperStatsService$SettingsObserver;

    .line 28
    invoke-direct {p1, v0}, Lcom/android/server/LooperStatsService$SettingsObserver;-><init>(Lcom/android/server/LooperStatsService;)V

    .line 31
    iput-object p1, p0, Lcom/android/server/LooperStatsService$Lifecycle;->mSettingsObserver:Lcom/android/server/LooperStatsService$SettingsObserver;

    .line 33
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 3

    .line 1
    const/16 v0, 0x1f4

    .line 3
    if-ne v0, p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/server/LooperStatsService$Lifecycle;->mService:Lcom/android/server/LooperStatsService;

    .line 7
    invoke-static {p1}, Lcom/android/server/LooperStatsService;->-$$Nest$minitFromSettings(Lcom/android/server/LooperStatsService;)V

    .line 10
    const-string/jumbo p1, "looper_stats"

    .line 13
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/android/server/LooperStatsService$Lifecycle;->mSettingsObserver:Lcom/android/server/LooperStatsService$SettingsObserver;

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, p1, v2, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 31
    iget-object p1, p0, Lcom/android/server/LooperStatsService$Lifecycle;->mStats:Lcom/android/internal/os/LooperStats;

    .line 33
    const-class v0, Lcom/android/internal/os/CachedDeviceState$Readonly;

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Lcom/android/internal/os/CachedDeviceState$Readonly;

    .line 41
    invoke-virtual {p1, p0}, Lcom/android/internal/os/LooperStats;->setDeviceState(Lcom/android/internal/os/CachedDeviceState$Readonly;)V

    .line 44
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-class v0, Lcom/android/internal/os/LooperStats;

    .line 3
    iget-object v1, p0, Lcom/android/server/LooperStatsService$Lifecycle;->mStats:Lcom/android/internal/os/LooperStats;

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 8
    const-string/jumbo v0, "looper_stats"

    .line 11
    iget-object v1, p0, Lcom/android/server/LooperStatsService$Lifecycle;->mService:Lcom/android/server/LooperStatsService;

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 16
    return-void
.end method
