.class public final Lcom/android/server/accessibility/AccessibilityManagerService$6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final synthetic val$service:Lcom/android/server/accessibility/AccessibilityServiceConnection;

.field public final synthetic val$userState:Lcom/android/server/accessibility/AccessibilityUserState;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$6;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$6;->val$userState:Lcom/android/server/accessibility/AccessibilityUserState;

    .line 8
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$6;->val$service:Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$6;->val$userState:Lcom/android/server/accessibility/AccessibilityUserState;

    .line 3
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    .line 5
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$6;->val$service:Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 7
    iget-object p2, p2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    .line 9
    check-cast p1, Ljava/util/HashSet;

    .line 11
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$6;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 16
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$6;->val$userState:Lcom/android/server/accessibility/AccessibilityUserState;

    .line 18
    iget-object v0, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    .line 20
    iget p2, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 22
    const-string/jumbo v1, "touch_exploration_granted_accessibility_services"

    .line 25
    invoke-virtual {p1, p2, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(ILjava/lang/String;Ljava/util/Set;)V

    .line 28
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$6;->val$userState:Lcom/android/server/accessibility/AccessibilityUserState;

    .line 30
    const/4 p2, 0x1

    .line 31
    iput-boolean p2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    .line 33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 36
    move-result-wide v0

    .line 37
    :try_start_0
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$6;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 39
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    move-result-object p1

    .line 45
    const-string/jumbo v2, "touch_exploration_enabled"

    .line 48
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$6;->val$userState:Lcom/android/server/accessibility/AccessibilityUserState;

    .line 50
    iget v3, v3, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 52
    invoke-static {p1, v2, p2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$6;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 60
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$6;->val$userState:Lcom/android/server/accessibility/AccessibilityUserState;

    .line 62
    const/4 p2, 0x0

    .line 63
    invoke-virtual {p1, p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    throw p0
.end method
