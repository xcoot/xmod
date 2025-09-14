.class public Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mImpl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Landroid/os/PowerManager;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/os/PowerManager;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    const-string v1, "VcnGatewayConnection"

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;->mImpl:Landroid/os/PowerManager$WakeLock;

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    invoke-virtual {p1, p0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
