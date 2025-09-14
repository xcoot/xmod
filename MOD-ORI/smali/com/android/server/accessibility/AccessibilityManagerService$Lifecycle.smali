.class public final Lcom/android/server/accessibility/AccessibilityManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Lifecycle;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 2

    .line 1
    const/16 v0, 0x1f4

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Lifecycle;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    const-string v1, "android.software.app_widgets"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 18
    .line 19
    const-class v1, Landroid/appwidget/AppWidgetManagerInternal;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/appwidget/AppWidgetManagerInternal;

    .line 26
    .line 27
    iput-object v1, v0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppWidgetService:Landroid/appwidget/AppWidgetManagerInternal;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->SEC_DEBUG:Z

    .line 31
    .line 32
    :cond_1
    :goto_0
    const/16 v0, 0x258

    .line 33
    .line 34
    if-ne p1, v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->setNonA11yToolNotificationToMatchSafetyCenter()V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    :goto_1
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Lifecycle;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 6
    .line 7
    .line 8
    const-class v2, Lcom/android/server/AccessibilityManagerInternal;

    .line 9
    .line 10
    invoke-static {v2, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "accessibility"

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
