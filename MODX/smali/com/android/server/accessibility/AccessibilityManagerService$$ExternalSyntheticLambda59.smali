.class public final synthetic Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda59;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final synthetic f$1:Lcom/android/server/accessibility/AccessibilityUserState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda59;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda59;->f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 5
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda59;->f$1:Lcom/android/server/accessibility/AccessibilityUserState;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda59;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda59;->f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 8
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda59;->f$1:Lcom/android/server/accessibility/AccessibilityUserState;

    .line 10
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 12
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 14
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 22
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    .line 24
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusStrokeWidth:I

    .line 26
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusColor:I

    .line 28
    invoke-interface {p1, v0, p0}, Landroid/view/accessibility/IAccessibilityManagerClient;->setFocusAppearance(II)V

    .line 31
    :cond_0
    return-void

    .line 32
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda59;->f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 34
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda59;->f$1:Lcom/android/server/accessibility/AccessibilityUserState;

    .line 36
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 38
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 40
    monitor-enter v1

    .line 41
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I

    .line 44
    move-result p0

    .line 45
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 47
    iget v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    .line 49
    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_1

    .line 55
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    .line 57
    if-eq v0, p0, :cond_1

    .line 59
    iput p0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    .line 61
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    .line 63
    invoke-interface {p1, p0}, Landroid/view/accessibility/IAccessibilityManagerClient;->setRelevantEventTypes(I)V

    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    :goto_0
    monitor-exit v1

    .line 70
    return-void

    .line 71
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
