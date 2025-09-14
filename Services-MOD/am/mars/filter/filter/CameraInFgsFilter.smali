.class public final Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public final mCameraDeviceStateCallback:Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter$1;

.field public mCameraManager:Landroid/hardware/camera2/CameraManager;

.field public final mCameraUsingList:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;->mCameraUsingList:Ljava/util/Set;

    .line 11
    new-instance v0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter$1;

    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;)V

    .line 16
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;->mCameraDeviceStateCallback:Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter$1;

    .line 18
    return-void
.end method


# virtual methods
.method public final deInit()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;->mCameraDeviceStateCallback:Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter$1;

    .line 7
    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->unregisterSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;)V

    .line 10
    :cond_0
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 2

    .line 1
    sget-boolean p1, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 3
    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->isChinaPolicyEnabled()Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 11
    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 13
    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 15
    invoke-virtual {p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getForegroundServiceStartTime(I)J

    .line 18
    move-result-wide p1

    .line 19
    const-wide/16 v0, 0x0

    .line 21
    cmp-long p1, p1, v0

    .line 23
    if-eqz p1, :cond_0

    .line 25
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;->mCameraUsingList:Ljava/util/Set;

    .line 27
    if-eqz p0, :cond_0

    .line 29
    check-cast p0, Ljava/util/HashSet;

    .line 31
    invoke-virtual {p0, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_0

    .line 37
    const/16 p0, 0x1d

    .line 39
    return p0

    .line 40
    :cond_0
    const/4 p0, 0x0

    .line 41
    return p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string/jumbo v0, "camera"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/hardware/camera2/CameraManager;

    .line 14
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 18
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;->mCameraDeviceStateCallback:Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter$1;

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CameraManager;->registerSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Landroid/os/Handler;)V

    .line 24
    return-void
.end method
