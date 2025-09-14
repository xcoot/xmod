.class public final Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$1:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$4;->this$1:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$4;->this$1:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mConfirm:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
