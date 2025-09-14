.class public final Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mToken:Landroid/hardware/display/IVirtualDisplayCallback;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;


# direct methods
.method public constructor <init>(Landroid/hardware/display/IVirtualDisplayCallback;Lcom/android/server/companion/virtual/GenericWindowPolicyController;Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 12
    .line 13
    return-void
.end method
