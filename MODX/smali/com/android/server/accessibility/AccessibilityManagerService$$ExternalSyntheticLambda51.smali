.class public final synthetic Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda51;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda51;->f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 6
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda51;->f$1:I

    .line 8
    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda51;->f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda51;->f$1:I

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 10
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 12
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 20
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    .line 22
    invoke-interface {p1, p0}, Landroid/view/accessibility/IAccessibilityManagerClient;->setState(I)V

    .line 25
    :cond_0
    return-void
.end method
