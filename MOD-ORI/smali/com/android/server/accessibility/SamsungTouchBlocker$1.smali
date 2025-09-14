.class public final Lcom/android/server/accessibility/SamsungTouchBlocker$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungTouchBlocker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$1;->this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    const-string p1, "SamsungTouchBlocker"

    .line 2
    .line 3
    const-string v0, "Touch Blocker is deactivated"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$1;->this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    .line 12
    .line 13
    return-void
.end method
