.class public final Lcom/android/server/wm/TrustedPresentationListenerController$1;
.super Landroid/window/WindowInfosListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/TrustedPresentationListenerController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TrustedPresentationListenerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$1;->this$0:Lcom/android/server/wm/TrustedPresentationListenerController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/window/WindowInfosListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onWindowInfosChanged([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/server/wm/TrustedPresentationListenerController$1;->this$0:Lcom/android/server/wm/TrustedPresentationListenerController;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/wm/TrustedPresentationListenerController$1$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/TrustedPresentationListenerController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TrustedPresentationListenerController$1;[Landroid/view/InputWindowHandle;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
