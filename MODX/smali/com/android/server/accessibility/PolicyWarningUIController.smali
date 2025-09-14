.class public final Lcom/android/server/accessibility/PolicyWarningUIController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field protected static final ACTION_A11Y_SETTINGS:Ljava/lang/String;

.field protected static final ACTION_DISMISS_NOTIFICATION:Ljava/lang/String;

.field protected static final ACTION_SEND_NOTIFICATION:Ljava/lang/String;


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field public final mEnabledA11yServices:Landroid/util/ArraySet;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mNotificationController:Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "PolicyWarningUIController"

    .line 3
    const-string v1, ".ACTION_SEND_NOTIFICATION"

    .line 5
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    sput-object v1, Lcom/android/server/accessibility/PolicyWarningUIController;->ACTION_SEND_NOTIFICATION:Ljava/lang/String;

    .line 11
    const-string v1, ".ACTION_A11Y_SETTINGS"

    .line 13
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    sput-object v1, Lcom/android/server/accessibility/PolicyWarningUIController;->ACTION_A11Y_SETTINGS:Ljava/lang/String;

    .line 19
    const-string v1, ".ACTION_DISMISS_NOTIFICATION"

    .line 21
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/android/server/accessibility/PolicyWarningUIController;->ACTION_DISMISS_NOTIFICATION:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;Landroid/content/Context;Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mEnabledA11yServices:Landroid/util/ArraySet;

    .line 11
    iput-object p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mMainHandler:Landroid/os/Handler;

    .line 13
    iput-object p2, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mContext:Landroid/content/Context;

    .line 15
    iput-object p3, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mNotificationController:Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;

    .line 17
    const-class v0, Landroid/app/AlarmManager;

    .line 19
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/app/AlarmManager;

    .line 25
    iput-object v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 27
    new-instance v3, Landroid/content/IntentFilter;

    .line 29
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 32
    sget-object p0, Lcom/android/server/accessibility/PolicyWarningUIController;->ACTION_SEND_NOTIFICATION:Ljava/lang/String;

    .line 34
    invoke-virtual {v3, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    sget-object p0, Lcom/android/server/accessibility/PolicyWarningUIController;->ACTION_A11Y_SETTINGS:Ljava/lang/String;

    .line 39
    invoke-virtual {v3, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    sget-object p0, Lcom/android/server/accessibility/PolicyWarningUIController;->ACTION_DISMISS_NOTIFICATION:Ljava/lang/String;

    .line 44
    invoke-virtual {v3, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    const-string v4, "android.permission.MANAGE_ACCESSIBILITY"

    .line 49
    const/4 v6, 0x2

    .line 50
    move-object v1, p2

    .line 51
    move-object v2, p3

    .line 52
    move-object v5, p1

    .line 53
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 56
    return-void
.end method

.method public static createPendingIntent(Landroid/content/Context;ILjava/lang/String;Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setIdentifier(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    move-result-object p2

    .line 22
    const-string v1, "android.intent.extra.COMPONENT_NAME"

    .line 24
    invoke-virtual {p2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 27
    move-result-object p2

    .line 28
    const-string p3, "android.intent.extra.USER_ID"

    .line 30
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    move-result-object p1

    .line 34
    const-string p2, "android.intent.extra.TIME"

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 39
    move-result-wide v1

    .line 40
    invoke-virtual {p1, p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 43
    const/high16 p1, 0x4000000

    .line 45
    const/4 p2, 0x0

    .line 46
    invoke-static {p0, p2, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method
