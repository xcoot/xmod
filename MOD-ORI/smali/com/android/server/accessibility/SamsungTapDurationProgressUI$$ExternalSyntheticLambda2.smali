.class public final synthetic Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda2;->f$1:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda2;->f$1:Z

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 p0, 0x8

    .line 12
    .line 13
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
