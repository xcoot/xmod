.class public final Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public cameraState:I

.field public prevCameraState:I

.field public final synthetic this$0:Lcom/android/server/bgslotmanager/CameraKillModeManager;


# direct methods
.method public constructor <init>(Lcom/android/server/bgslotmanager/CameraKillModeManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->this$0:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    .line 6
    return-void
.end method


# virtual methods
.method public final setState(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->this$0:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    .line 3
    if-nez p1, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->cameraState:I

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v1, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->prevCameraState:I

    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x2

    .line 16
    if-ne v1, v3, :cond_1

    .line 18
    if-ne p1, v2, :cond_1

    .line 20
    iput v2, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->cameraState:I

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    if-ne p1, v2, :cond_2

    .line 25
    const/16 v0, 0xb

    .line 27
    iput v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->cameraState:I

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    if-ne v1, v2, :cond_3

    .line 32
    if-ne p1, v3, :cond_3

    .line 34
    iput v3, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->cameraState:I

    .line 36
    goto :goto_0

    .line 37
    :cond_3
    if-ne p1, v3, :cond_4

    .line 39
    const/16 v0, 0xc

    .line 41
    iput v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->cameraState:I

    .line 43
    goto :goto_0

    .line 44
    :cond_4
    const/4 v1, 0x3

    .line 45
    if-ne p1, v1, :cond_5

    .line 47
    iput v1, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->cameraState:I

    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    :cond_5
    :goto_0
    if-eqz p2, :cond_6

    .line 54
    iput p1, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->prevCameraState:I

    .line 56
    :cond_6
    return-void
.end method
