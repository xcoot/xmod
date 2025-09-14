.class public final Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mConfig:Landroid/companion/virtual/camera/VirtualCameraConfig;

.field public final synthetic this$0:Lcom/android/server/companion/virtual/camera/VirtualCameraController;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/virtual/camera/VirtualCameraController;Landroid/companion/virtual/camera/VirtualCameraConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;->this$0:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    .line 6
    iput-object p2, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;->mConfig:Landroid/companion/virtual/camera/VirtualCameraConfig;

    .line 8
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    const-string v0, "VirtualCameraController"

    .line 3
    const-string v1, "Virtual camera binder died"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;->this$0:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    .line 10
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;->mConfig:Landroid/companion/virtual/camera/VirtualCameraConfig;

    .line 12
    invoke-virtual {v0, p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->unregisterCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V

    .line 15
    return-void
.end method
