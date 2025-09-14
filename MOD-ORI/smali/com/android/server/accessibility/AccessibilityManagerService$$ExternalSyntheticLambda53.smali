.class public final synthetic Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda53;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda53;->f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda53;->f$1:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda53;->f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda53;->f$1:J

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 9
    .line 10
    iget-object p0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 11
    .line 12
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    .line 21
    .line 22
    invoke-interface {p0, v1, v2}, Landroid/view/accessibility/IAccessibilityManagerClient;->notifyServicesStateChanged(J)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
