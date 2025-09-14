.class public final synthetic Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(ILandroid/os/RemoteCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda4;->f$0:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda4;->f$1:Landroid/os/RemoteCallback;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda4;->f$0:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda4;->f$1:Landroid/os/RemoteCallback;

    .line 4
    .line 5
    new-instance v0, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "screenshot_status"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
