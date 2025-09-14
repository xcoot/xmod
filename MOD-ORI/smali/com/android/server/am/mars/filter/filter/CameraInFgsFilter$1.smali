.class public final Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter$1;
.super Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;

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
    const-string p1, "android.system"

    .line 2
    .line 3
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_2

    .line 8
    .line 9
    const-string/jumbo p1, "com.sec.android.app.camera"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x1

    .line 20
    if-ne p3, p1, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;->mCameraUsingList:Ljava/util/Set;

    .line 25
    .line 26
    check-cast p0, Ljava/util/HashSet;

    .line 27
    .line 28
    invoke-virtual {p0, p4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, 0x3

    .line 33
    if-ne p3, p1, :cond_2

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;->mCameraUsingList:Ljava/util/Set;

    .line 38
    .line 39
    check-cast p0, Ljava/util/HashSet;

    .line 40
    .line 41
    invoke-virtual {p0, p4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    return-void
.end method
