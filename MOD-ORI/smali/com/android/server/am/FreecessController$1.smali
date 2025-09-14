.class public final Lcom/android/server/am/FreecessController$1;
.super Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/FreecessController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/FreecessController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/FreecessController$1;->this$0:Lcom/android/server/am/FreecessController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 1
    const/4 p1, 0x3

    .line 2
    if-ne p3, p1, :cond_0

    .line 3
    .line 4
    const-string/jumbo p1, "com.sec.android.app.camera"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/am/FreecessController$1;->this$0:Lcom/android/server/am/FreecessController;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->exitOLAF()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
