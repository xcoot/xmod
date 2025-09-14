.class public final synthetic Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 6
    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 3
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 5
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    .line 7
    iget v1, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    .line 9
    if-ne v0, v1, :cond_0

    .line 11
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    .line 13
    iget v0, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mFocusStrokeWidth:I

    .line 15
    iget p0, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mFocusColor:I

    .line 17
    invoke-interface {p1, v0, p0}, Landroid/view/accessibility/IAccessibilityManagerClient;->setFocusAppearance(II)V

    .line 20
    :cond_0
    return-void
.end method
