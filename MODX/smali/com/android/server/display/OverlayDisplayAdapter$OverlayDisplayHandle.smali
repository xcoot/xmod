.class public final Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mActiveMode:I

.field public mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;

.field public final mDismissRunnable:Lcom/android/server/display/OverlayDisplayAdapter$1;

.field public final mFlags:Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

.field public final mGravity:I

.field public final mModes:Ljava/util/List;

.field public final mName:Ljava/lang/String;

.field public final mNumber:I

.field public final mResizeRunnable:Lcom/android/server/display/OverlayDisplayAdapter$1;

.field public final mShowRunnable:Lcom/android/server/display/OverlayDisplayAdapter$1;

.field public mWindow:Lcom/android/server/display/OverlayDisplayWindow;

.field public final synthetic this$0:Lcom/android/server/display/OverlayDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OverlayDisplayAdapter;Ljava/lang/String;Ljava/util/List;ILcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    .line 6
    new-instance v0, Lcom/android/server/display/OverlayDisplayAdapter$1;

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, v1, p0}, Lcom/android/server/display/OverlayDisplayAdapter$1;-><init>(ILjava/lang/Object;)V

    .line 12
    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mShowRunnable:Lcom/android/server/display/OverlayDisplayAdapter$1;

    .line 14
    new-instance v1, Lcom/android/server/display/OverlayDisplayAdapter$1;

    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v1, v2, p0}, Lcom/android/server/display/OverlayDisplayAdapter$1;-><init>(ILjava/lang/Object;)V

    .line 20
    iput-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDismissRunnable:Lcom/android/server/display/OverlayDisplayAdapter$1;

    .line 22
    new-instance v1, Lcom/android/server/display/OverlayDisplayAdapter$1;

    .line 24
    const/4 v2, 0x3

    .line 25
    invoke-direct {v1, v2, p0}, Lcom/android/server/display/OverlayDisplayAdapter$1;-><init>(ILjava/lang/Object;)V

    .line 28
    iput-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mResizeRunnable:Lcom/android/server/display/OverlayDisplayAdapter$1;

    .line 30
    iput-object p2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mModes:Ljava/util/List;

    .line 34
    iput p4, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I

    .line 36
    iput-object p5, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mFlags:Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    .line 38
    iput p6, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mNumber:I

    .line 40
    const/4 p2, 0x0

    .line 41
    iput p2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mActiveMode:I

    .line 43
    iget-object p0, p1, Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    .line 45
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    return-void
.end method
