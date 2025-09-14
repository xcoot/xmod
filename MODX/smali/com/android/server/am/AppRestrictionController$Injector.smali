.class public final Lcom/android/server/am/AppRestrictionController$Injector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mAppBatteryExemptionTracker:Lcom/android/server/am/AppBatteryExemptionTracker;

.field public mAppBatteryTracker:Lcom/android/server/am/AppBatteryTracker;

.field public mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

.field public mAppHibernationInternal:Lcom/android/server/apphibernation/AppHibernationService$LocalService;

.field public mAppMediaSessionTracker:Lcom/android/server/am/AppMediaSessionTracker;

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAppPermissionTracker:Lcom/android/server/am/AppPermissionTracker;

.field public mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

.field public mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

.field public mAppStateTracker:Lcom/android/server/AppStateTracker;

.field public final mContext:Landroid/content/Context;

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mRoleManager:Landroid/app/role/RoleManager;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    .line 6
    return-void
.end method


# virtual methods
.method public final getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    .line 7
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/usage/AppStandbyInternal;

    .line 13
    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 17
    return-object p0
.end method

.method public final getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 7
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 13
    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 17
    return-object p0
.end method

.method public final getRoleManager()Landroid/app/role/RoleManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mRoleManager:Landroid/app/role/RoleManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    .line 7
    const-class v1, Landroid/app/role/RoleManager;

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/app/role/RoleManager;

    .line 15
    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mRoleManager:Landroid/app/role/RoleManager;

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mRoleManager:Landroid/app/role/RoleManager;

    .line 19
    return-object p0
.end method

.method public final getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 7
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 13
    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 17
    return-object p0
.end method
