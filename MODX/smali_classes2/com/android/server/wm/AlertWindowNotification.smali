.class public final Lcom/android/server/wm/AlertWindowNotification;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sChannelGroup:Landroid/app/NotificationChannelGroup;

.field public static sNextRequestCode:I


# instance fields
.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mNotificationTag:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public mPosted:Z

.field public final mRequestCode:I

.field public final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AlertWindowNotification;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/AlertWindowNotification;->mPackageName:Ljava/lang/String;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string/jumbo v0, "notification"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/app/NotificationManager;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 20
    .line 21
    const-string p1, "com.android.server.wm.AlertWindowNotification - "

    .line 22
    .line 23
    invoke-static {p1, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationTag:Ljava/lang/String;

    .line 28
    .line 29
    sget p1, Lcom/android/server/wm/AlertWindowNotification;->sNextRequestCode:I

    .line 30
    .line 31
    add-int/lit8 p2, p1, 0x1

    .line 32
    .line 33
    sput p2, Lcom/android/server/wm/AlertWindowNotification;->sNextRequestCode:I

    .line 34
    .line 35
    iput p1, p0, Lcom/android/server/wm/AlertWindowNotification;->mRequestCode:I

    .line 36
    .line 37
    return-void
.end method
