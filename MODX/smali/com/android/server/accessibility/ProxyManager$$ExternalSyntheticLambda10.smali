.class public final synthetic Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda10;->f$0:I

    .line 6
    iput p2, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda10;->f$1:I

    .line 8
    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda10;->f$0:I

    .line 3
    iget p0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda10;->f$1:I

    .line 5
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 7
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    .line 9
    if-ne v1, v0, :cond_0

    .line 11
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    .line 13
    invoke-interface {p1, p0}, Landroid/view/accessibility/IAccessibilityManagerClient;->setState(I)V

    .line 16
    :cond_0
    return-void
.end method
