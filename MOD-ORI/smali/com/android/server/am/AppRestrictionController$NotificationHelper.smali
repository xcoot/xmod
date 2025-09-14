.class public final Lcom/android/server/am/AppRestrictionController$NotificationHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final NOTIFICATION_TIME_ATTRS:[Ljava/lang/String;

.field public static final NOTIFICATION_TYPE_STRINGS:[Ljava/lang/String;


# instance fields
.field public final mActionButtonReceiver:Lcom/android/server/am/AppRestrictionController$1;

.field public final mBgController:Lcom/android/server/am/AppRestrictionController;

.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

.field public final mLock:Ljava/lang/Object;

.field public mNotificationIDStepper:I

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mSettingsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "Abusive current drain"

    .line 2
    .line 3
    const-string v1, "Long-running FGS"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->NOTIFICATION_TYPE_STRINGS:[Ljava/lang/String;

    .line 10
    .line 11
    const-string/jumbo v0, "last_batt_noti_ts"

    .line 12
    .line 13
    .line 14
    const-string/jumbo v1, "last_long_fgs_noti_ts"

    .line 15
    .line 16
    .line 17
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->NOTIFICATION_TIME_ATTRS:[Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/AppRestrictionController;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/am/AppRestrictionController$1;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1, p0}, Lcom/android/server/am/AppRestrictionController$1;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mActionButtonReceiver:Lcom/android/server/am/AppRestrictionController$1;

    .line 11
    .line 12
    const v0, 0xc1b2509

    .line 13
    .line 14
    .line 15
    iput v0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationIDStepper:I

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    .line 18
    .line 19
    iget-object v0, p1, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 22
    .line 23
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mNotificationManager:Landroid/app/NotificationManager;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    const-class v2, Landroid/app/NotificationManager;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/app/NotificationManager;

    .line 36
    .line 37
    iput-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mNotificationManager:Landroid/app/NotificationManager;

    .line 38
    .line 39
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mNotificationManager:Landroid/app/NotificationManager;

    .line 40
    .line 41
    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 42
    .line 43
    iget-object v1, p1, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mLock:Ljava/lang/Object;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mSettingsLock:Ljava/lang/Object;

    .line 50
    .line 51
    iget-object p1, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final cancelRequestBgRestrictedIfNecessary(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mSettingsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 7
    .line 8
    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    aget p2, p1, p2

    .line 21
    .line 22
    :goto_0
    if-lez p2, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 25
    .line 26
    invoke-virtual {p0, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_2

    .line 32
    :cond_1
    :goto_1
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method
