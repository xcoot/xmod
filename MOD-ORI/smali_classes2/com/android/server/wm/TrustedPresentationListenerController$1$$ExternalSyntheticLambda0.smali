.class public final synthetic Lcom/android/server/wm/TrustedPresentationListenerController$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TrustedPresentationListenerController$1;

.field public final synthetic f$1:[Landroid/view/InputWindowHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TrustedPresentationListenerController$1;[Landroid/view/InputWindowHandle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TrustedPresentationListenerController$1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/TrustedPresentationListenerController$1$$ExternalSyntheticLambda0;->f$1:[Landroid/view/InputWindowHandle;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TrustedPresentationListenerController$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$1$$ExternalSyntheticLambda0;->f$1:[Landroid/view/InputWindowHandle;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/TrustedPresentationListenerController$1;->this$0:Lcom/android/server/wm/TrustedPresentationListenerController;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TrustedPresentationListenerController;->computeTpl([Landroid/view/InputWindowHandle;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
