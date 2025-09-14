.class public abstract Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeManagerLazyHolder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INSTANCE:Lcom/android/server/bgslotmanager/CameraKillModeManager;

.field public static isinitClass:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->isOriginBG:Z

    .line 8
    .line 9
    const-string/jumbo v1, "cam_kill_start_tm"

    .line 10
    .line 11
    .line 12
    const-string v2, "120000"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iput v1, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mCamKillStartTime:I

    .line 19
    .line 20
    const-string/jumbo v1, "dha_th_rate"

    .line 21
    .line 22
    .line 23
    const-string v2, "2.0"

    .line 24
    .line 25
    invoke-static {v1, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iput v1, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mSzDHAThresholdRate:F

    .line 34
    .line 35
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v1, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_camera_map:Ljava/util/LinkedHashMap;

    .line 41
    .line 42
    new-instance v1, Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v1, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_cameraclientexcept_map:Ljava/util/HashMap;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    iput-object v1, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 51
    .line 52
    new-instance v1, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;

    .line 53
    .line 54
    invoke-direct {v1, v0}, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;-><init>(Lcom/android/server/bgslotmanager/CameraKillModeManager;)V

    .line 55
    .line 56
    .line 57
    iput-object v1, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mCameraKillModeOperator:Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;

    .line 58
    .line 59
    sput-object v0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeManagerLazyHolder;->INSTANCE:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    sput-boolean v0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeManagerLazyHolder;->isinitClass:Z

    .line 63
    .line 64
    return-void
.end method
