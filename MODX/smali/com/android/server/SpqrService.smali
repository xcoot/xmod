.class public final Lcom/android/server/SpqrService;
.super Lcom/android/server/ProfileService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public volatile mService:Landroid/os/ISpqrService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "SpqrService"

    .line 3
    const-string/jumbo v1, "sqpr_service"

    .line 6
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/ProfileService;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-string p1, "/system/etc/spqr-package-blocklist.conf"

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/ProfileService;->initPackageBlockList(Ljava/lang/String;)Ljava/util/Set;

    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/android/server/ProfileService;->packageBlockList:Ljava/util/Set;

    .line 17
    return-void
.end method


# virtual methods
.method public final checkAppId(I)Z
    .locals 1

    .line 1
    if-gez p1, :cond_0

    .line 3
    const-string v0, "Invalid app id: "

    .line 5
    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    iget-object p0, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    .line 11
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public final getBinderOfService()Landroid/os/IBinder;
    .locals 0

    .line 1
    const-string/jumbo p0, "spqr_service"

    .line 4
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final initializeInterfaceOfService()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/SpqrService;->mService:Landroid/os/ISpqrService;

    .line 4
    return-void
.end method

.method public final isServiceRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/SpqrService;->mService:Landroid/os/ISpqrService;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    .line 7
    const-string/jumbo v0, "spqr_service is not running"

    .line 10
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x1

    .line 16
    return p0
.end method

.method public final setInterfaceOfService(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/os/ISpqrService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISpqrService;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/android/server/SpqrService;->mService:Landroid/os/ISpqrService;

    .line 7
    return-void
.end method
