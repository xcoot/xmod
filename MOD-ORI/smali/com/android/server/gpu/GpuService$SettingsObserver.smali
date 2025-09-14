.class public final Lcom/android/server/gpu/GpuService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mProdDriverDenylistsUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/gpu/GpuService;


# direct methods
.method public constructor <init>(Lcom/android/server/gpu/GpuService;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/server/gpu/GpuService$SettingsObserver;->this$0:Lcom/android/server/gpu/GpuService;

    .line 2
    .line 3
    new-instance v0, Landroid/os/Handler;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v0, "updatable_driver_production_denylists"

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/server/gpu/GpuService$SettingsObserver;->mProdDriverDenylistsUri:Landroid/net/Uri;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/server/gpu/GpuService;->mContentResolver:Landroid/content/ContentResolver;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, -0x1

    .line 24
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/server/gpu/GpuService$SettingsObserver;->mProdDriverDenylistsUri:Landroid/net/Uri;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/gpu/GpuService$SettingsObserver;->this$0:Lcom/android/server/gpu/GpuService;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string/jumbo p2, "game_driver"

    .line 18
    .line 19
    .line 20
    const-string/jumbo v0, "updatable_driver_production_denylists"

    .line 21
    .line 22
    .line 23
    invoke-static {p2, v0}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    if-nez p2, :cond_1

    .line 28
    .line 29
    iget-object p2, p1, Lcom/android/server/gpu/GpuService;->mContentResolver:Landroid/content/ContentResolver;

    .line 30
    .line 31
    invoke-static {p2, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    :cond_1
    if-eqz p2, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const-string p2, ""

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/server/gpu/GpuService;->parseDenylists(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/gpu/GpuService$SettingsObserver;->this$0:Lcom/android/server/gpu/GpuService;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/gpu/GpuService;->setDenylist()V

    .line 46
    .line 47
    .line 48
    :cond_3
    return-void
.end method
