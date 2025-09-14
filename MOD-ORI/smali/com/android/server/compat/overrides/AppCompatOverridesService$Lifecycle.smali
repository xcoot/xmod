.class public final Lcom/android/server/compat/overrides/AppCompatOverridesService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mService:Lcom/android/server/compat/overrides/AppCompatOverridesService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/compat/overrides/AppCompatOverridesService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string/jumbo v2, "platform_compat"

    .line 8
    .line 9
    .line 10
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    sget-object v3, Lcom/android/server/compat/overrides/AppCompatOverridesService;->SUPPORTED_NAMESPACES:Ljava/util/List;

    .line 19
    .line 20
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/compat/overrides/AppCompatOverridesService;-><init>(Landroid/content/Context;Lcom/android/internal/compat/IPlatformCompat;Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$Lifecycle;->mService:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->registerDeviceConfigListeners()V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$Lifecycle;->mService:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->registerPackageReceiver()V

    .line 31
    .line 32
    .line 33
    return-void
.end method
