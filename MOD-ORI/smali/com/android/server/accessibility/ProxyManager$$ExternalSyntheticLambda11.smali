.class public final synthetic Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/accessibility/ProxyManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/ProxyManager;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/accessibility/ProxyManager;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda11;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/accessibility/ProxyManager;

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda11;->f$1:I

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    .line 16
    .line 17
    if-ne v1, p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/ProxyManager;->computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    .line 24
    .line 25
    if-eq v0, p0, :cond_0

    .line 26
    .line 27
    iput p0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    .line 28
    .line 29
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    .line 30
    .line 31
    invoke-interface {p1, p0}, Landroid/view/accessibility/IAccessibilityManagerClient;->setRelevantEventTypes(I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void

    .line 35
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/accessibility/ProxyManager;

    .line 36
    .line 37
    iget p0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda11;->f$1:I

    .line 38
    .line 39
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    .line 45
    .line 46
    if-ne v1, p0, :cond_1

    .line 47
    .line 48
    iget-object v1, v0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    .line 49
    .line 50
    monitor-enter v1

    .line 51
    :try_start_0
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/ProxyManager;->getRecommendedTimeoutMillisLocked(I)J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    invoke-interface {p1, v2, v3}, Landroid/view/accessibility/IAccessibilityManagerClient;->notifyServicesStateChanged(J)V

    .line 58
    .line 59
    .line 60
    monitor-exit v1

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p0

    .line 65
    :cond_1
    :goto_0
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
