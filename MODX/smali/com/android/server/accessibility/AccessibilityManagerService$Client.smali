.class public final Lcom/android/server/accessibility/AccessibilityManagerService$Client;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

.field public mDeviceId:I

.field public mLastSentRelevantEventTypes:I

.field public final mPackageNames:[Ljava/lang/String;

.field public final mUid:I


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/IAccessibilityManagerClient;ILcom/android/server/accessibility/AccessibilityUserState;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    .line 7
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    .line 9
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 11
    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 14
    move-result-object p2

    .line 15
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    .line 17
    iput p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mUid:I

    .line 19
    iput p5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    .line 21
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 23
    monitor-enter p2

    .line 24
    :try_start_0
    iget-object p3, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 26
    invoke-virtual {p3, p5}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    .line 29
    move-result p3

    .line 30
    if-eqz p3, :cond_0

    .line 32
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 34
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/ProxyManager;->computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I

    .line 37
    move-result p1

    .line 38
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    invoke-virtual {p1, p4, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I

    .line 46
    move-result p1

    .line 47
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    .line 49
    :goto_0
    monitor-exit p2

    .line 50
    return-void

    .line 51
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method
