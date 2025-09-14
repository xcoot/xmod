.class public Lcom/android/server/location/provider/LocationProviderManager;
.super Lcom/android/server/location/listeners/ListenerMultiplexer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/location/provider/AbstractLocationProvider$Listener;


# instance fields
.field public final mActiveOriginalRegistrations:Ljava/util/HashSet;

.field public final mAdasPackageAllowlistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

.field public final mAlarmHelper:Lcom/android/server/location/injector/SystemAlarmHelper;

.field public final mAltitudeConverter:Landroid/location/altitude/AltitudeConverter;

.field public final mAppForegroundChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda7;

.field public final mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

.field public final mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

.field public final mBackgroundThrottleIntervalChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

.field public final mBackgroundThrottlePackageWhitelistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

.field public final mContext:Landroid/content/Context;

.field public mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;

.field public final mEmergencyHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;

.field public final mEmergencyStateChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda2;

.field public final mEnabled:Landroid/util/SparseBooleanArray;

.field public final mEnabledListeners:Ljava/util/ArrayList;

.field public final mIgnoreSettingsPackageWhitelistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

.field public final mInactiveMotionRegistrations:Ljava/util/HashSet;

.field public volatile mIsAltitudeConverterIdle:Z

.field public mIsSettingsIgnored:Z

.field public final mLastLocations:Landroid/util/SparseArray;

.field public final mLocationEnabledChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda4;

.field public final mLocationFudger:Lcom/android/server/location/fudger/LocationFudger;

.field public final mLocationManagerInternal:Landroid/location/LocationManagerInternal;

.field public final mLocationPackageBlacklistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda4;

.field public final mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

.field public final mLocationPermissionsListener:Lcom/android/server/location/provider/LocationProviderManager$1;

.field public final mLocationPowerSaveModeChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda11;

.field public final mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

.field public final mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

.field public final mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

.field public final mLocationUserSettingsListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda3;

.field public final mMotionPowerSaveModeChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;

.field public final mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

.field public final mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

.field public final mName:Ljava/lang/String;

.field public final mPackageResetHelper:Lcom/android/server/location/injector/SystemPackageResetHelper;

.field public final mPackageResetResponder:Lcom/android/server/location/provider/LocationProviderManager$2;

.field public final mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

.field public final mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

.field public final mProviderRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mRequiredPermissions:Ljava/util/Collection;

.field public final mScreenInteractiveChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;

.field public final mScreenInteractiveHelper:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

.field public final mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

.field public mState:I

.field public mStateChangedListener:Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;

.field public final mUserChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda0;

.field public final mUserHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;Ljava/util/Collection;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;-><init>()V

    .line 3
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda0;

    .line 4
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationUserSettingsListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda3;

    .line 5
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/provider/LocationProviderManager;I)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationEnabledChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda4;

    .line 6
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/provider/LocationProviderManager;I)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mBackgroundThrottlePackageWhitelistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

    .line 7
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda4;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/provider/LocationProviderManager;I)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda4;

    .line 8
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$1;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsListener:Lcom/android/server/location/provider/LocationProviderManager$1;

    .line 9
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda7;

    .line 10
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/provider/LocationProviderManager;I)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mBackgroundThrottleIntervalChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

    .line 11
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/provider/LocationProviderManager;I)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAdasPackageAllowlistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

    .line 12
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/provider/LocationProviderManager;I)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIgnoreSettingsPackageWhitelistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

    .line 13
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda11;

    .line 14
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;

    .line 15
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEmergencyStateChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda2;

    .line 16
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mMotionPowerSaveModeChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;

    .line 17
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$2;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPackageResetResponder:Lcom/android/server/location/provider/LocationProviderManager$2;

    .line 18
    new-instance v0, Landroid/location/altitude/AltitudeConverter;

    invoke-direct {v0}, Landroid/location/altitude/AltitudeConverter;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAltitudeConverter:Landroid/location/altitude/AltitudeConverter;

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIsAltitudeConverterIdle:Z

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIsSettingsIgnored:Z

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mInactiveMotionRegistrations:Ljava/util/HashSet;

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mActiveOriginalRegistrations:Ljava/util/HashSet;

    .line 23
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mContext:Landroid/content/Context;

    .line 24
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    const/4 p1, 0x2

    .line 26
    iput p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    .line 27
    new-instance p3, Landroid/util/SparseBooleanArray;

    invoke-direct {p3, p1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    .line 28
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    .line 29
    iput-object p5, p0, Lcom/android/server/location/provider/LocationProviderManager;->mRequiredPermissions:Ljava/util/Collection;

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabledListeners:Ljava/util/ArrayList;

    .line 31
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProviderRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    const-class p1, Landroid/location/LocationManagerInternal;

    .line 33
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManagerInternal;

    .line 34
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    .line 35
    check-cast p2, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 36
    iget-object p1, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    .line 37
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    .line 38
    iget-object p1, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 39
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 40
    iget-object p3, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 41
    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 42
    iget-object p3, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAlarmHelper:Lcom/android/server/location/injector/SystemAlarmHelper;

    .line 43
    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAlarmHelper:Lcom/android/server/location/injector/SystemAlarmHelper;

    .line 44
    iget-object p3, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 45
    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 46
    iget-object p3, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    .line 47
    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    .line 48
    iget-object p3, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    .line 49
    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    .line 50
    iget-object p3, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    .line 51
    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    .line 52
    iget-object p3, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mScreenInteractiveHelper:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    .line 53
    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveHelper:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    .line 54
    iget-object p3, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 55
    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 56
    new-instance p3, Lcom/android/server/location/fudger/LocationFudger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p4

    .line 58
    iget-object p1, p1, Lcom/android/server/location/injector/SystemSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 59
    :try_start_0
    const-string/jumbo v0, "locationCoarseAccuracy"

    .line 60
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getUserId()I

    move-result v1

    const/high16 v2, 0x44fa0000    # 2000.0f

    .line 61
    invoke-static {p1, v0, v2, v1}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeClock()Ljava/time/Clock;

    move-result-object p4

    new-instance p5, Ljava/security/SecureRandom;

    invoke-direct {p5}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p3, p1, p4, p5}, Lcom/android/server/location/fudger/LocationFudger;-><init>(FLjava/time/Clock;Ljava/util/Random;)V

    .line 64
    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationFudger:Lcom/android/server/location/fudger/LocationFudger;

    .line 65
    invoke-virtual {p2}, Lcom/android/server/location/LocationManagerService$SystemInjector;->getEmergencyHelper()Lcom/android/server/location/injector/SystemEmergencyHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEmergencyHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;

    .line 66
    iget-object p1, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mPackageResetHelper:Lcom/android/server/location/injector/SystemPackageResetHelper;

    .line 67
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPackageResetHelper:Lcom/android/server/location/injector/SystemPackageResetHelper;

    .line 68
    new-instance p1, Lcom/android/server/location/provider/MockableLocationProvider;

    iget-object p3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    invoke-direct {p1, p3}, Lcom/android/server/location/provider/MockableLocationProvider;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 69
    iget-object p1, p1, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    .line 70
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->setListener(Lcom/android/server/location/provider/AbstractLocationProvider$Listener;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 71
    iget-object p1, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 72
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 73
    iget-object p1, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 74
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    return-void

    :catchall_0
    move-exception p0

    .line 75
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    throw p0
.end method


# virtual methods
.method public final addEnabledListener(Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v1, v2, :cond_0

    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 15
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabledListeners:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public calculateRequestDelayMillis(JLjava/util/Collection;)J
    .locals 11

    .line 1
    check-cast p3, Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p3

    .line 7
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 13
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 19
    const-wide/16 v1, 0x0

    .line 21
    cmp-long v3, p1, v1

    .line 23
    if-nez v3, :cond_0

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getLastDeliveredLocation()Landroid/location/Location;

    .line 33
    move-result-object v4

    .line 34
    if-nez v4, :cond_1

    .line 36
    invoke-virtual {v3}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    .line 39
    move-result v5

    .line 40
    if-nez v5, :cond_1

    .line 42
    iget-object v4, v0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 44
    invoke-virtual {v4}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    .line 47
    move-result v6

    .line 48
    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getPermissionLevel()I

    .line 51
    move-result v7

    .line 52
    const/4 v8, 0x0

    .line 53
    invoke-virtual {v3}, Landroid/location/LocationRequest;->getIntervalMillis()J

    .line 56
    move-result-wide v9

    .line 57
    move-object v5, p0

    .line 58
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    .line 61
    move-result-object v4

    .line 62
    :cond_1
    if-nez v4, :cond_2

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    invoke-virtual {v3}, Landroid/location/LocationRequest;->getIntervalMillis()J

    .line 68
    move-result-wide v5

    .line 69
    invoke-virtual {v4}, Landroid/location/Location;->getElapsedRealtimeAgeMillis()J

    .line 72
    move-result-wide v3

    .line 73
    sub-long/2addr v5, v3

    .line 74
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 77
    move-result-wide v1

    .line 78
    :goto_1
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 81
    move-result-wide p1

    .line 82
    goto :goto_0

    .line 83
    :cond_3
    :goto_2
    return-wide p1
.end method

.method public final checkSettingsIgnoredChanged(ZZLjava/util/Collection;)V
    .locals 3

    .line 1
    if-ne p1, p2, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    iput-boolean p2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIsSettingsIgnored:Z

    .line 6
    const/4 p1, 0x0

    .line 7
    if-eqz p2, :cond_1

    .line 9
    if-eqz p3, :cond_1

    .line 11
    invoke-interface {p3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 14
    move-result-object p3

    .line 15
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;-><init>(I)V

    .line 21
    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 24
    move-result-object p3

    .line 25
    invoke-interface {p3}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 28
    move-result-object p3

    .line 29
    invoke-virtual {p3, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 35
    :cond_1
    iget-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 37
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    new-instance v0, Landroid/os/Bundle;

    .line 42
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    if-eqz p2, :cond_3

    .line 47
    if-eqz p1, :cond_3

    .line 49
    iget-object v1, p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 51
    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 54
    move-result v1

    .line 55
    const/16 v2, 0x3e8

    .line 57
    if-ne v1, v2, :cond_2

    .line 59
    new-instance p1, Ljava/lang/Throwable;

    .line 61
    const-string/jumbo v1, "stack dump"

    .line 64
    invoke-direct {p1, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 67
    const-string/jumbo v1, "throwable"

    .line 70
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    iget-object p1, p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 76
    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    const-string/jumbo v1, "packageName"

    .line 83
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_3
    :goto_0
    const-string/jumbo p1, "provider"

    .line 89
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 91
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string/jumbo p0, "ignored"

    .line 97
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    iget-object p0, p3, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 102
    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->SETTINGS_IGNORED_STATE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    .line 104
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 107
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 6
    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 9
    const-string v1, " provider"

    .line 11
    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 16
    invoke-virtual {v1}, Lcom/android/server/location/provider/MockableLocationProvider;->isMock()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 22
    const-string v1, " [mock]"

    .line 24
    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    :goto_0
    const-string v1, ":"

    .line 32
    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 43
    invoke-virtual {v1}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->getRunningUserIds()[I

    .line 46
    move-result-object v1

    .line 47
    array-length v2, v1

    .line 48
    const/4 v3, 0x0

    .line 49
    :goto_1
    if-ge v3, v2, :cond_3

    .line 51
    aget v10, v1, v3

    .line 53
    array-length v4, v1

    .line 54
    const/4 v11, 0x1

    .line 55
    if-eq v4, v11, :cond_1

    .line 57
    const-string/jumbo v4, "user "

    .line 60
    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2, v10}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 66
    const-string v4, ":"

    .line 68
    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 74
    :cond_1
    const-string/jumbo v4, "last location="

    .line 77
    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 80
    const-wide v8, 0x7fffffffffffffffL

    .line 85
    const/4 v6, 0x2

    .line 86
    const/4 v7, 0x0

    .line 87
    move-object v4, p0

    .line 88
    move v5, v10

    .line 89
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 96
    const-string/jumbo v4, "enabled="

    .line 99
    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, v10}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    .line 105
    move-result v4

    .line 106
    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 109
    array-length v4, v1

    .line 110
    if-eq v4, v11, :cond_2

    .line 112
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 115
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 117
    goto :goto_1

    .line 118
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 121
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/provider/MockableLocationProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 127
    return-void

    .line 128
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    throw p0
.end method

.method public final getLastLocationUnsafe(IIZJ)Landroid/location/Location;
    .locals 9

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    if-ne p1, v0, :cond_3

    .line 6
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 8
    invoke-virtual {p1}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->getRunningUserIds()[I

    .line 11
    move-result-object p1

    .line 12
    :goto_0
    array-length v0, p1

    .line 13
    if-ge v1, v0, :cond_2

    .line 15
    aget v4, p1, v1

    .line 17
    move-object v3, p0

    .line 18
    move v5, p2

    .line 19
    move v6, p3

    .line 20
    move-wide v7, p4

    .line 21
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    .line 24
    move-result-object v0

    .line 25
    if-eqz v2, :cond_0

    .line 27
    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {v0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    .line 32
    move-result-wide v3

    .line 33
    invoke-virtual {v2}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    .line 36
    move-result-wide v5

    .line 37
    cmp-long v3, v3, v5

    .line 39
    if-lez v3, :cond_1

    .line 41
    :cond_0
    move-object v2, v0

    .line 42
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return-object v2

    .line 46
    :cond_3
    const/4 v0, -0x2

    .line 47
    if-ne p1, v0, :cond_4

    .line 49
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 51
    invoke-virtual {p1}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->getCurrentUserId()I

    .line 54
    move-result v1

    .line 55
    move-object v0, p0

    .line 56
    move v2, p2

    .line 57
    move v3, p3

    .line 58
    move-wide v4, p4

    .line 59
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :cond_4
    const/4 v0, 0x1

    .line 65
    if-ltz p1, :cond_5

    .line 67
    move v3, v0

    .line 68
    goto :goto_1

    .line 69
    :cond_5
    move v3, v1

    .line 70
    :goto_1
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 73
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 75
    monitor-enter v3

    .line 76
    :try_start_0
    iget v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    .line 78
    const/4 v5, 0x2

    .line 79
    if-eq v4, v5, :cond_6

    .line 81
    move v1, v0

    .line 82
    :cond_6
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 85
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    .line 87
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 90
    move-result-object p0

    .line 91
    check-cast p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;

    .line 93
    if-nez p0, :cond_7

    .line 95
    move-object p0, v2

    .line 96
    goto :goto_2

    .line 97
    :cond_7
    if-eq p2, v0, :cond_a

    .line 99
    if-ne p2, v5, :cond_9

    .line 101
    if-eqz p3, :cond_8

    .line 103
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineBypassLocation:Landroid/location/Location;

    .line 105
    goto :goto_2

    .line 106
    :cond_8
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineLocation:Landroid/location/Location;

    .line 108
    goto :goto_2

    .line 109
    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    .line 111
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 114
    throw p0

    .line 115
    :cond_a
    if-eqz p3, :cond_b

    .line 117
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseBypassLocation:Landroid/location/Location;

    .line 119
    goto :goto_2

    .line 120
    :cond_b
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseLocation:Landroid/location/Location;

    .line 122
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    if-nez p0, :cond_c

    .line 125
    return-object v2

    .line 126
    :cond_c
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeAgeMillis()J

    .line 129
    move-result-wide p1

    .line 130
    cmp-long p1, p1, p4

    .line 132
    if-lez p1, :cond_d

    .line 134
    return-object v2

    .line 135
    :cond_d
    return-object p0

    .line 136
    :catchall_0
    move-exception p0

    .line 137
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    throw p0
.end method

.method public final getPermittedLocationResult(Landroid/location/LocationResult;I)Landroid/location/LocationResult;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p2, v0, :cond_1

    .line 4
    const/4 p0, 0x2

    .line 5
    if-ne p2, p0, :cond_0

    .line 7
    return-object p1

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 10
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 13
    throw p0

    .line 14
    :cond_1
    if-eqz p1, :cond_4

    .line 16
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationFudger:Lcom/android/server/location/fudger/LocationFudger;

    .line 18
    monitor-enter p0

    .line 19
    :try_start_0
    iget-object p2, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedFineLocationResult:Landroid/location/LocationResult;

    .line 21
    if-eq p1, p2, :cond_3

    .line 23
    iget-object p2, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocationResult:Landroid/location/LocationResult;

    .line 25
    if-ne p1, p2, :cond_2

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    new-instance p2, Lcom/android/server/location/fudger/LocationFudger$$ExternalSyntheticLambda0;

    .line 31
    invoke-direct {p2, p0}, Lcom/android/server/location/fudger/LocationFudger$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/fudger/LocationFudger;)V

    .line 34
    invoke-virtual {p1, p2}, Landroid/location/LocationResult;->map(Ljava/util/function/Function;)Landroid/location/LocationResult;

    .line 37
    move-result-object p2

    .line 38
    monitor-enter p0

    .line 39
    :try_start_1
    iput-object p1, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedFineLocationResult:Landroid/location/LocationResult;

    .line 41
    iput-object p2, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocationResult:Landroid/location/LocationResult;

    .line 43
    monitor-exit p0

    .line 44
    goto :goto_2

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    throw p1

    .line 48
    :catchall_1
    move-exception p1

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    :goto_0
    :try_start_2
    iget-object p2, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocationResult:Landroid/location/LocationResult;

    .line 52
    monitor-exit p0

    .line 53
    goto :goto_2

    .line 54
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 55
    throw p1

    .line 56
    :cond_4
    const/4 p2, 0x0

    .line 57
    :goto_2
    return-object p2
.end method

.method public getServiceState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 3
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p0}, Landroid/location/provider/ProviderRequest;->toString()Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw p0
.end method

.method public final isActive(Lcom/android/server/location/listeners/RemovableListenerRegistration;)Z
    .locals 9

    .line 1
    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 2
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isPermitted()Z

    move-result v0

    const/4 v1, 0x1

    const-string/jumbo v2, "gps"

    const/4 v3, 0x0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    move v0, v3

    goto/16 :goto_3

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->isBypass()Z

    move-result v0

    .line 4
    iget-object v4, p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 5
    invoke-virtual {p0, v0, v4}, Lcom/android/server/location/provider/LocationProviderManager;->isActive(ZLandroid/location/util/identity/CallerIdentity;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_8

    .line 6
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    .line 7
    iget-boolean v4, v0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mReady:Z

    .line 8
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 9
    iget v0, v0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mLocationPowerSaveMode:I

    const/4 v4, 0x4

    if-eq v0, v1, :cond_4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_5

    const/4 v5, 0x3

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_5

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isForeground()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveHelper:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    .line 13
    iget-boolean v5, v0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mReady:Z

    .line 14
    invoke-static {v5}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 15
    iget-boolean v0, v0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mIsInteractive:Z

    if-nez v0, :cond_8

    .line 16
    iget-object v0, p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 17
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getInstance()Lcom/android/server/location/gnss/sec/CarrierConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isChinaCarrier()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_0

    .line 19
    :cond_6
    sget-object v5, Lcom/android/server/location/gnss/sec/GnssConstants;->NAVIGATION_APP_LIST:[Ljava/lang/String;

    move v6, v3

    :goto_1
    if-ge v6, v4, :cond_0

    aget-object v7, v5, v6

    .line 20
    new-instance v8, Ljava/lang/String;

    invoke-static {v7, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V

    .line 21
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    move v0, v1

    .line 22
    :goto_3
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_6

    .line 23
    :cond_9
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    if-eqz v0, :cond_c

    .line 24
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mActiveOriginalRegistrations:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_b

    .line 25
    const-string v4, "LocationManagerService"

    const-string/jumbo v5, "try to release motion power when coming new active request"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-boolean v5, v2, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mIsMotionPowerSaveMode:Z

    if-nez v5, :cond_a

    goto :goto_4

    .line 27
    :cond_a
    const-string/jumbo v5, "checkMotionPowerSaveMode, motion power save mode is changed to false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    sget-object v4, Landroid/location/LocationConstants$STATE_TYPE;->MOTION_POWER_DISABLE:Landroid/location/LocationConstants$STATE_TYPE;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    invoke-virtual {v6, v4, v5}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {v2, v3}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->notifyMotionPowerSaveModeChanged(Z)V

    .line 30
    :cond_b
    :goto_4
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mActiveOriginalRegistrations:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 31
    :cond_c
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mActiveOriginalRegistrations:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_5
    if-eqz v0, :cond_f

    .line 32
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/LocationRequest;->isBypass()Z

    move-result v4

    if-nez v4, :cond_f

    .line 33
    iget-boolean v0, p1, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActiveMotionControl:Z

    if-eq v1, v0, :cond_d

    .line 34
    iput-boolean v1, p1, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActiveMotionControl:Z

    .line 35
    :cond_d
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mInactiveMotionRegistrations:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mInactiveMotionRegistrations:Ljava/util/HashSet;

    .line 36
    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_e

    .line 37
    invoke-virtual {v2, v1}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->onAvailableMotionStop(Z)V

    .line 38
    :cond_e
    iget-boolean p0, v2, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mIsMotionPowerSaveMode:Z

    xor-int/lit8 v0, p0, 0x1

    goto :goto_6

    .line 39
    :cond_f
    iget-boolean v4, p1, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActiveMotionControl:Z

    if-eqz v4, :cond_10

    .line 40
    iput-boolean v3, p1, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActiveMotionControl:Z

    .line 41
    :cond_10
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mInactiveMotionRegistrations:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mInactiveMotionRegistrations:Ljava/util/HashSet;

    .line 42
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p0

    if-ne p0, v1, :cond_11

    .line 43
    invoke-virtual {v2, v3}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->onAvailableMotionStop(Z)V

    :cond_11
    :goto_6
    return v0
.end method

.method public final isActive(ZLandroid/location/util/identity/CallerIdentity;)Z
    .locals 3

    .line 44
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->isSystemServer()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_3

    .line 45
    invoke-virtual {v1}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->getCurrentUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_0
    if-nez p1, :cond_2

    .line 46
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    .line 47
    :cond_1
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->isVisibleUserId(I)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    .line 48
    :cond_2
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result p1

    .line 49
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 50
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/injector/SystemSettingsHelper;->isLocationPackageBlacklisted(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final isEnabled(I)Z
    .locals 4

    .line 1
    const/16 v0, -0x2710

    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p1, v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, -0x2

    .line 8
    if-ne p1, v0, :cond_1

    .line 10
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 12
    invoke-virtual {p1}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->getCurrentUserId()I

    .line 15
    move-result p1

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_1
    if-ltz p1, :cond_2

    .line 23
    const/4 v1, 0x1

    .line 24
    :cond_2
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 27
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    .line 32
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 35
    move-result v1

    .line 36
    if-gez v1, :cond_3

    .line 38
    const-string v1, "LocationManagerService"

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v3, " provider saw user "

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    const-string v3, " unexpectedly"

    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    .line 73
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    .line 75
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 78
    move-result v1

    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    .line 84
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 87
    move-result p0

    .line 88
    monitor-exit v0

    .line 89
    return p0

    .line 90
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    throw p0
.end method

.method public final isVisibleToCaller()Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 10
    return v2

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 13
    invoke-virtual {v0}, Lcom/android/server/location/provider/MockableLocationProvider;->isMock()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 19
    return v2

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mRequiredPermissions:Ljava/util/Collection;

    .line 22
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v0

    .line 26
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_3

    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/String;

    .line 38
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {v3, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 46
    const/4 p0, 0x0

    .line 47
    return p0

    .line 48
    :cond_3
    return v2
.end method

.method public mergeRegistrations(Ljava/util/Collection;)Landroid/location/provider/ProviderRequest;
    .locals 13

    .line 2
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide v0, 0x7fffffffffffffffL

    const/16 v2, 0x68

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-wide v6, v0

    move-wide v8, v6

    move v5, v4

    move v4, v3

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 3
    invoke-virtual {v10}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v10

    .line 4
    invoke-virtual {v10}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v11

    cmp-long v11, v11, v0

    if-nez v11, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v10}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v11

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 6
    invoke-virtual {v10}, Landroid/location/LocationRequest;->getQuality()I

    move-result v11

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 7
    invoke-virtual {v10}, Landroid/location/LocationRequest;->getMaxUpdateDelayMillis()J

    move-result-wide v11

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 8
    invoke-virtual {v10}, Landroid/location/LocationRequest;->isAdasGnssBypass()Z

    move-result v11

    or-int/2addr v3, v11

    .line 9
    invoke-virtual {v10}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v11

    or-int/2addr v4, v11

    .line 10
    invoke-virtual {v10}, Landroid/location/LocationRequest;->isLowPower()Z

    move-result v10

    and-int/2addr v5, v10

    goto :goto_0

    :cond_1
    cmp-long p0, v6, v0

    if-nez p0, :cond_2

    .line 11
    sget-object p0, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    return-object p0

    :cond_2
    const-wide/16 v0, 0x2

    .line 12
    div-long v10, v8, v0

    cmp-long p0, v10, v6

    if-gez p0, :cond_3

    const-wide/16 v8, 0x0

    :cond_3
    const-wide/16 v10, 0x3e8

    .line 13
    :try_start_0
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v10

    div-long/2addr v10, v0

    const/4 p0, 0x3

    invoke-static {v10, v11, p0}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-wide v0, 0x7ffffffffffffffeL

    .line 14
    :goto_1
    new-instance p0, Landroid/os/WorkSource;

    invoke-direct {p0}, Landroid/os/WorkSource;-><init>()V

    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 16
    invoke-virtual {v10}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v11

    invoke-virtual {v11}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v11

    cmp-long v11, v11, v0

    if-gtz v11, :cond_4

    .line 17
    invoke-virtual {v10}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v10

    invoke-virtual {v10}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_2

    .line 18
    :cond_5
    new-instance p1, Landroid/location/provider/ProviderRequest$Builder;

    invoke-direct {p1}, Landroid/location/provider/ProviderRequest$Builder;-><init>()V

    .line 19
    invoke-virtual {p1, v6, v7}, Landroid/location/provider/ProviderRequest$Builder;->setIntervalMillis(J)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {p1, v2}, Landroid/location/provider/ProviderRequest$Builder;->setQuality(I)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object p1

    .line 21
    invoke-virtual {p1, v8, v9}, Landroid/location/provider/ProviderRequest$Builder;->setMaxUpdateDelayMillis(J)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object p1

    .line 22
    invoke-virtual {p1, v3}, Landroid/location/provider/ProviderRequest$Builder;->setAdasGnssBypass(Z)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object p1

    .line 23
    invoke-virtual {p1, v4}, Landroid/location/provider/ProviderRequest$Builder;->setLocationSettingsIgnored(Z)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object p1

    .line 24
    invoke-virtual {p1, v5}, Landroid/location/provider/ProviderRequest$Builder;->setLowPower(Z)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object p1

    .line 25
    invoke-virtual {p1, p0}, Landroid/location/provider/ProviderRequest$Builder;->setWorkSource(Landroid/os/WorkSource;)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/location/provider/ProviderRequest$Builder;->build()Landroid/location/provider/ProviderRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->mergeRegistrations(Ljava/util/Collection;)Landroid/location/provider/ProviderRequest;

    move-result-object p0

    return-object p0
.end method

.method public final onEnabledChanged(I)V
    .locals 8

    .line 1
    const/16 v0, -0x2710

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, -0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    if-ne p1, v0, :cond_2

    .line 10
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 12
    invoke-virtual {p1}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->getRunningUserIds()[I

    .line 15
    move-result-object p1

    .line 16
    :goto_0
    array-length v0, p1

    .line 17
    if-ge v1, v0, :cond_1

    .line 19
    aget v0, p1, v1

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-void

    .line 28
    :cond_2
    const/4 v0, 0x1

    .line 29
    if-ltz p1, :cond_3

    .line 31
    move v2, v0

    .line 32
    goto :goto_1

    .line 33
    :cond_3
    move v2, v1

    .line 34
    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 37
    iget v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    .line 39
    if-nez v2, :cond_4

    .line 41
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 43
    iget-object v2, v2, Lcom/android/server/location/provider/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 45
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    .line 51
    iget-object v2, v2, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 53
    iget-boolean v2, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    .line 55
    if-eqz v2, :cond_4

    .line 57
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 59
    invoke-virtual {v2, p1}, Lcom/android/server/location/injector/SystemSettingsHelper;->isLocationEnabled(I)Z

    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_4

    .line 65
    goto :goto_2

    .line 66
    :cond_4
    move v0, v1

    .line 67
    :goto_2
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    .line 69
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 72
    move-result v2

    .line 73
    const/4 v3, 0x0

    .line 74
    if-gez v2, :cond_5

    .line 76
    move-object v2, v3

    .line 77
    goto :goto_3

    .line 78
    :cond_5
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    .line 80
    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 83
    move-result v2

    .line 84
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 87
    move-result-object v2

    .line 88
    :goto_3
    if-eqz v2, :cond_6

    .line 90
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 93
    move-result v4

    .line 94
    if-ne v4, v0, :cond_6

    .line 96
    return-void

    .line 97
    :cond_6
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    .line 99
    invoke-virtual {v4, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 102
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 104
    if-nez v2, :cond_7

    .line 106
    if-eqz v0, :cond_8

    .line 108
    :cond_7
    const-string v5, "[u"

    .line 110
    const-string v6, "] "

    .line 112
    const-string v7, " provider enabled = "

    .line 114
    invoke-static {p1, v5, v6, v4, v7}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    move-result-object v5

    .line 118
    const-string v6, "LocationManagerService"

    .line 120
    invoke-static {v6, v5, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 123
    sget-object v5, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    .line 125
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    new-instance v6, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEnabledEvent;

    .line 130
    invoke-direct {v6, p1, v4, v0}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEnabledEvent;-><init>(ILjava/lang/String;Z)V

    .line 133
    invoke-virtual {v5, v6}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog$1(Ljava/lang/Object;)V

    .line 136
    :cond_8
    if-nez v0, :cond_9

    .line 138
    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    .line 140
    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 143
    move-result-object v5

    .line 144
    check-cast v5, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;

    .line 146
    if-eqz v5, :cond_9

    .line 148
    iput-object v3, v5, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineLocation:Landroid/location/Location;

    .line 150
    iput-object v3, v5, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseLocation:Landroid/location/Location;

    .line 152
    :cond_9
    if-eqz v2, :cond_b

    .line 154
    const-string/jumbo v2, "passive"

    .line 157
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    move-result v2

    .line 161
    if-nez v2, :cond_a

    .line 163
    new-instance v2, Landroid/content/Intent;

    .line 165
    const-string v3, "android.location.PROVIDERS_CHANGED"

    .line 167
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    const-string v3, "android.location.extra.PROVIDER_NAME"

    .line 172
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    move-result-object v2

    .line 176
    const-string v3, "android.location.extra.PROVIDER_ENABLED"

    .line 178
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    move-result-object v2

    .line 182
    const/high16 v3, 0x40000000    # 2.0f

    .line 184
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 187
    move-result-object v2

    .line 188
    const/high16 v3, 0x10000000

    .line 190
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 193
    move-result-object v2

    .line 194
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mContext:Landroid/content/Context;

    .line 196
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 199
    move-result-object v4

    .line 200
    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 203
    :cond_a
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabledListeners:Ljava/util/ArrayList;

    .line 205
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 208
    move-result v2

    .line 209
    if-nez v2, :cond_b

    .line 211
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabledListeners:Ljava/util/ArrayList;

    .line 213
    new-array v1, v1, [Landroid/location/LocationManagerInternal$ProviderEnabledListener;

    .line 215
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 218
    move-result-object v1

    .line 219
    check-cast v1, [Landroid/location/LocationManagerInternal$ProviderEnabledListener;

    .line 221
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    .line 224
    move-result-object v2

    .line 225
    new-instance v3, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda18;

    .line 227
    invoke-direct {v3, p0, v1, p1, v0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/location/provider/LocationProviderManager;[Landroid/location/LocationManagerInternal$ProviderEnabledListener;IZ)V

    .line 230
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    :cond_b
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda19;

    .line 235
    const/4 v1, 0x0

    .line 236
    invoke-direct {v0, p1, v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda19;-><init>(II)V

    .line 239
    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 242
    return-void
.end method

.method public final onRegister()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 3
    iget-object v1, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    .line 5
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mBackgroundThrottleIntervalChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

    .line 7
    invoke-virtual {v1, v2}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 10
    iget-object v1, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

    .line 12
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mBackgroundThrottlePackageWhitelistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

    .line 14
    invoke-virtual {v1, v2}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 17
    iget-object v1, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    .line 19
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda4;

    .line 21
    invoke-virtual {v1, v2}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 24
    iget-object v1, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    .line 26
    invoke-virtual {v1, v2}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 29
    iget-object v1, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mAdasPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    .line 31
    iget-object v1, v1, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 33
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAdasPackageAllowlistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

    .line 35
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mIgnoreSettingsPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    .line 40
    iget-object v0, v0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 42
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIgnoreSettingsPackageWhitelistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    .line 49
    iget-object v0, v0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 51
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsListener:Lcom/android/server/location/provider/LocationProviderManager$1;

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    .line 58
    iget-object v0, v0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 60
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda7;

    .line 62
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    .line 67
    iget-object v0, v0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 69
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda11;

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveHelper:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    .line 76
    iget-object v0, v0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 78
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-static {}, Landroid/location/flags/Flags;->enableLocationBypass()Z

    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEmergencyHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;

    .line 91
    iget-object v0, v0, Lcom/android/server/location/injector/EmergencyHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 93
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEmergencyStateChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda2;

    .line 95
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPackageResetResponder:Lcom/android/server/location/provider/LocationProviderManager$2;

    .line 100
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPackageResetHelper:Lcom/android/server/location/injector/SystemPackageResetHelper;

    .line 102
    invoke-virtual {v1, v0}, Lcom/android/server/location/injector/SystemPackageResetHelper;->register(Lcom/android/server/location/injector/PackageResetHelper$Responder;)V

    .line 105
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 107
    iget-object v0, v0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mMotionPowerListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 109
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mMotionPowerSaveModeChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;

    .line 111
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public final onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 12

    .line 1
    check-cast p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 3
    iget-object v0, p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 5
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object v4

    .line 9
    iget-object v0, p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 11
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    .line 14
    move-result-object v5

    .line 15
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    .line 18
    move-result-object v7

    .line 19
    instance-of v8, p1, Landroid/app/PendingIntent;

    .line 21
    instance-of v9, p1, Landroid/os/IBinder;

    .line 23
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isForeground()Z

    .line 26
    move-result v11

    .line 27
    const/4 v3, 0x1

    .line 28
    iget-object v6, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 30
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v10, 0x0

    .line 34
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    .line 37
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 39
    if-eqz p1, :cond_3

    .line 41
    iget-object v0, p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 43
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 46
    move-result v1

    .line 47
    const-string/jumbo v2, "updateRequestInfo, uid="

    .line 50
    const-string v3, "NSLocationProviderHelper"

    .line 52
    invoke-static {v1, v2, v3}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v2, p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mListenerId:Ljava/lang/String;

    .line 57
    iget-object v4, p1, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mRegistrationMap:Ljava/util/Map;

    .line 59
    new-instance v5, Lcom/android/server/location/nsflp/NSLocationProviderHelper$$ExternalSyntheticLambda0;

    .line 61
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 64
    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap;

    .line 66
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 68
    invoke-virtual {v4, p0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Ljava/util/Set;

    .line 74
    invoke-interface {v4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    const/16 v4, 0x3e8

    .line 79
    if-ne v1, v4, :cond_0

    .line 81
    const-string/jumbo v4, "passive"

    .line 84
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v4

    .line 88
    if-nez v4, :cond_0

    .line 90
    new-instance v4, Ljava/lang/Throwable;

    .line 92
    const-string/jumbo v5, "stack dump"

    .line 95
    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 98
    goto :goto_0

    .line 99
    :cond_0
    const/4 v4, 0x0

    .line 100
    :goto_0
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    .line 103
    move-result-object v5

    .line 104
    new-instance v6, Landroid/os/Bundle;

    .line 106
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 109
    const-string/jumbo v7, "packageName"

    .line 112
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 115
    move-result-object v8

    .line 116
    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string/jumbo v7, "provider"

    .line 122
    invoke-virtual {v6, v7, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string/jumbo p0, "listenerid"

    .line 128
    invoke-virtual {v6, p0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v5}, Landroid/location/LocationRequest;->getIntervalMillis()J

    .line 134
    move-result-wide v7

    .line 135
    const-string/jumbo p0, "interval"

    .line 138
    invoke-virtual {v6, p0, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 141
    const-string/jumbo p0, "minUpdateInterval"

    .line 144
    invoke-virtual {v5}, Landroid/location/LocationRequest;->getMinUpdateIntervalMillis()J

    .line 147
    move-result-wide v7

    .line 148
    invoke-virtual {v6, p0, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 151
    const-string/jumbo p0, "quality"

    .line 154
    invoke-virtual {v5}, Landroid/location/LocationRequest;->getQuality()I

    .line 157
    move-result v2

    .line 158
    invoke-virtual {v6, p0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    const-string/jumbo p0, "pid"

    .line 164
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    .line 167
    move-result v2

    .line 168
    invoke-virtual {v6, p0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    const-string/jumbo p0, "uid"

    .line 174
    invoke-virtual {v6, p0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    const-string/jumbo p0, "foreground"

    .line 180
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isForeground()Z

    .line 183
    move-result v2

    .line 184
    invoke-virtual {v6, p0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    const-string/jumbo p0, "throwable"

    .line 190
    invoke-virtual {v6, p0, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 193
    iget-boolean p0, p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isListenerType:Z

    .line 195
    const-string/jumbo v2, "listenerType"

    .line 198
    invoke-virtual {v6, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 201
    const-string/jumbo p0, "isAllowed"

    .line 204
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isPermitted()Z

    .line 207
    move-result v2

    .line 208
    invoke-virtual {v6, p0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 211
    const-string/jumbo p0, "smallestDisplacement"

    .line 214
    invoke-virtual {v5}, Landroid/location/LocationRequest;->getMinUpdateDistanceMeters()F

    .line 217
    move-result v2

    .line 218
    invoke-virtual {v6, p0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 221
    const-string/jumbo p0, "numUpdates"

    .line 224
    invoke-virtual {v5}, Landroid/location/LocationRequest;->getMaxUpdates()I

    .line 227
    move-result v2

    .line 228
    invoke-virtual {v6, p0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 231
    const-string/jumbo p0, "permissionLevel"

    .line 234
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getPermissionLevel()I

    .line 237
    move-result p2

    .line 238
    invoke-virtual {v6, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    const-string p0, "attributionTag"

    .line 243
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    .line 246
    move-result-object p2

    .line 247
    invoke-virtual {v6, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v5}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    .line 253
    move-result-object p0

    .line 254
    if-eqz p0, :cond_2

    .line 256
    invoke-virtual {p0}, Landroid/os/WorkSource;->size()I

    .line 259
    move-result p2

    .line 260
    if-lez p2, :cond_2

    .line 262
    :try_start_0
    invoke-virtual {p0}, Landroid/os/WorkSource;->size()I

    .line 265
    move-result p2

    .line 266
    new-array v0, p2, [I

    .line 268
    new-array v2, p2, [Ljava/lang/String;

    .line 270
    const/4 v4, 0x0

    .line 271
    :goto_1
    if-ge v4, p2, :cond_1

    .line 273
    invoke-virtual {p0, v4}, Landroid/os/WorkSource;->getUid(I)I

    .line 276
    move-result v5

    .line 277
    aput v5, v0, v4

    .line 279
    invoke-virtual {p0, v4}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    .line 282
    move-result-object v5

    .line 283
    aput-object v5, v2, v4

    .line 285
    add-int/lit8 v4, v4, 0x1

    .line 287
    goto :goto_1

    .line 288
    :cond_1
    const-string/jumbo v4, "workSourceSize"

    .line 291
    invoke-virtual {v6, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 294
    const-string/jumbo p2, "workSourceUids"

    .line 297
    invoke-virtual {v6, p2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 300
    const-string/jumbo p2, "workSourceNames"

    .line 303
    invoke-virtual {v6, p2, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    goto :goto_2

    .line 307
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 309
    const-string v0, "Failed to put worksource["

    .line 311
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 317
    const-string p0, "]"

    .line 319
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    move-result-object p0

    .line 326
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_2
    :goto_2
    invoke-virtual {p1, v1, v6}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->updateUidProcState(ILandroid/os/Bundle;)V

    .line 332
    iget-object p0, p1, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 334
    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->LOCATION_REQUEST:Landroid/location/LocationConstants$STATE_TYPE;

    .line 336
    invoke-virtual {p0, p1, v6}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 339
    :cond_3
    return-void
.end method

.method public final onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 12

    .line 1
    check-cast p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 3
    iget-object v0, p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 5
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object v4

    .line 9
    iget-object v0, p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 11
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    .line 14
    move-result-object v5

    .line 15
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    .line 18
    move-result-object v7

    .line 19
    instance-of v8, p1, Landroid/app/PendingIntent;

    .line 21
    instance-of v9, p1, Landroid/os/IBinder;

    .line 23
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isForeground()Z

    .line 26
    move-result v11

    .line 27
    const/4 v2, 0x1

    .line 28
    const/4 v10, 0x0

    .line 29
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 31
    const/4 v3, 0x1

    .line 32
    iget-object v6, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 34
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    .line 37
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 39
    if-eqz p1, :cond_3

    .line 41
    iget-object v0, p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 43
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 46
    move-result v1

    .line 47
    const-string/jumbo v2, "updateRemoveInfo, uid="

    .line 50
    const-string v3, "NSLocationProviderHelper"

    .line 52
    invoke-static {v1, v2, v3}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v2, p1, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mRegistrationMap:Ljava/util/Map;

    .line 57
    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 61
    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_0

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    .line 69
    const-string/jumbo p2, "updateRemoveInfo, Registration map does not contains key "

    .line 72
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string p0, ". So return"

    .line 80
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 87
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    goto :goto_1

    .line 91
    :cond_0
    iget-object v2, p1, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mRegistrationMap:Ljava/util/Map;

    .line 93
    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 95
    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Ljava/util/Set;

    .line 101
    if-eqz v2, :cond_2

    .line 103
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_1

    .line 109
    goto :goto_0

    .line 110
    :cond_1
    invoke-interface {v2, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 113
    new-instance p0, Landroid/os/Bundle;

    .line 115
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 118
    const-string/jumbo v2, "packageName"

    .line 121
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object p2, p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mListenerId:Ljava/lang/String;

    .line 130
    const-string/jumbo v2, "listenerid"

    .line 133
    invoke-virtual {p0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string/jumbo p2, "pid"

    .line 139
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    .line 142
    move-result v0

    .line 143
    invoke-virtual {p0, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 146
    const-string/jumbo p2, "uid"

    .line 149
    invoke-virtual {p0, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    invoke-virtual {p1, v1, p0}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->updateUidProcState(ILandroid/os/Bundle;)V

    .line 155
    iget-object p1, p1, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 157
    sget-object p2, Landroid/location/LocationConstants$STATE_TYPE;->LOCATION_REMOVE:Landroid/location/LocationConstants$STATE_TYPE;

    .line 159
    invoke-virtual {p1, p2, p0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 162
    goto :goto_1

    .line 163
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 165
    const-string/jumbo p2, "updateRemoveInfo, Registration "

    .line 168
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string p0, " set is null or empty. So return"

    .line 176
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object p0

    .line 183
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_3
    :goto_1
    return-void
.end method

.method public final onRegistrationReplaced(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 1

    .line 1
    check-cast p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 3
    check-cast p4, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 5
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getLastDeliveredLocation()Landroid/location/Location;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p4, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mLastLocation:Landroid/location/Location;

    .line 11
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationReplaced(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    .line 14
    return-void
.end method

.method public final onReportLocation(Landroid/location/LocationResult;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_3

    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroid/location/LocationResult;->validate()Landroid/location/LocationResult;
    :try_end_0
    .catch Landroid/location/LocationResult$BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    const-string/jumbo v0, "enable_location_provider_manager_msl"

    .line 12
    const-string/jumbo v2, "location"

    .line 15
    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda14;

    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-direct {v0, v2, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda14;-><init>(ILjava/lang/Object;)V

    .line 27
    invoke-virtual {p1, v0}, Landroid/location/LocationResult;->map(Ljava/util/function/Function;)Landroid/location/LocationResult;

    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v0, p1

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    const-string v3, "Dropping invalid locations: "

    .line 39
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    const-string v2, "LocationManagerService"

    .line 51
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v0, 0x0

    .line 55
    :goto_0
    if-nez v0, :cond_1

    .line 57
    return-void

    .line 58
    :cond_1
    sget-object v2, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    .line 60
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 62
    invoke-virtual {v0}, Landroid/location/LocationResult;->size()I

    .line 65
    move-result v4

    .line 66
    monitor-enter v2

    .line 67
    :try_start_1
    iget-object v5, v2, Lcom/android/server/location/eventlog/LocationEventLog;->mLocationsLog:Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;

    .line 69
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    new-instance v6, Lcom/android/server/location/eventlog/LocationEventLog$ProviderReceiveLocationEvent;

    .line 74
    invoke-direct {v6, v3, v4}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderReceiveLocationEvent;-><init>(Ljava/lang/String;I)V

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 80
    move-result-wide v3

    .line 81
    invoke-virtual {v5, v3, v4, v6}, Lcom/android/server/location/eventlog/LocalEventLog;->addLog(JLjava/lang/Object;)V

    .line 84
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 87
    invoke-virtual {v0}, Landroid/location/LocationResult;->getLastLocation()Landroid/location/Location;

    .line 90
    move-result-object v3

    .line 91
    iget-boolean v4, v2, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHasNsflpFeature:Z

    .line 93
    if-nez v4, :cond_2

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    iget-object v4, v2, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHandler:Landroid/os/Handler;

    .line 98
    if-eqz v4, :cond_4

    .line 100
    if-eqz v3, :cond_4

    .line 102
    new-instance v5, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;

    .line 104
    invoke-direct {v5, v2, v3}, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/nsflp/NSConnectionHelper;Landroid/location/Location;)V

    .line 107
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    goto :goto_1

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    throw p0

    .line 114
    :cond_3
    move-object v0, p1

    .line 115
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    .line 117
    const/4 v3, 0x0

    .line 118
    if-eqz v2, :cond_5

    .line 120
    const/4 v5, -0x2

    .line 121
    const/4 v6, 0x2

    .line 122
    const/4 v7, 0x1

    .line 123
    const-wide v8, 0x7fffffffffffffffL

    .line 128
    move-object v4, p0

    .line 129
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    .line 132
    move-result-object v2

    .line 133
    if-eqz v2, :cond_5

    .line 135
    invoke-virtual {p1, v3}, Landroid/location/LocationResult;->get(I)Landroid/location/Location;

    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    .line 142
    move-result-wide v4

    .line 143
    invoke-virtual {v2}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    .line 146
    move-result-wide v6

    .line 147
    cmp-long p1, v4, v6

    .line 149
    if-gez p1, :cond_5

    .line 151
    const-string p1, "LocationManagerService"

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    .line 155
    const-string/jumbo v4, "non-monotonic location received from "

    .line 158
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 163
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v4, " provider"

    .line 168
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object v2

    .line 175
    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_5
    invoke-virtual {v0}, Landroid/location/LocationResult;->getLastLocation()Landroid/location/Location;

    .line 181
    move-result-object p1

    .line 182
    const/4 v2, -0x1

    .line 183
    invoke-virtual {p0, v2, p1}, Lcom/android/server/location/provider/LocationProviderManager;->setLastLocation(ILandroid/location/Location;)V

    .line 186
    new-instance p1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda14;

    .line 188
    const/4 v2, 0x0

    .line 189
    invoke-direct {p1, v2, v0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda14;-><init>(ILjava/lang/Object;)V

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->deliverToListeners(Ljava/util/function/Function;)V

    .line 195
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    .line 197
    if-eqz p0, :cond_7

    .line 199
    iget-object p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 201
    monitor-enter p1

    .line 202
    :try_start_3
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 204
    iget-object v2, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    .line 206
    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 207
    :try_start_4
    iget-object p0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 209
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 210
    :try_start_5
    check-cast p0, Lcom/android/server/location/provider/PassiveLocationProvider;

    .line 212
    if-eqz p0, :cond_6

    .line 214
    goto :goto_2

    .line 215
    :cond_6
    move v1, v3

    .line 216
    :goto_2
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 219
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 222
    move-result-wide v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 223
    :try_start_6
    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->reportLocation(Landroid/location/LocationResult;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 226
    :try_start_7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 229
    monitor-exit p1

    .line 230
    goto :goto_4

    .line 231
    :catchall_1
    move-exception p0

    .line 232
    goto :goto_3

    .line 233
    :catchall_2
    move-exception p0

    .line 234
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 237
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 238
    :catchall_3
    move-exception p0

    .line 239
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 240
    :try_start_9
    throw p0

    .line 241
    :goto_3
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 242
    throw p0

    .line 243
    :cond_7
    :goto_4
    return-void
.end method

.method public final onStateChanged(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    .line 3
    iget-boolean v1, p2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    .line 5
    if-eq v0, v1, :cond_0

    .line 7
    const/4 v0, -0x1

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    .line 11
    :cond_0
    iget-object v0, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    .line 13
    iget-object v1, p2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    .line 15
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 21
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;

    .line 23
    const/4 v1, 0x3

    .line 24
    invoke-direct {v0, v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;-><init>(I)V

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mStateChangedListener:Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;

    .line 32
    if-eqz v0, :cond_2

    .line 34
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 37
    move-result-object v1

    .line 38
    new-instance v2, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda28;

    .line 40
    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V

    .line 43
    check-cast v1, Landroid/os/HandlerExecutor;

    .line 45
    invoke-virtual {v1, v2}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 48
    :cond_2
    return-void
.end method

.method public final onTransferUnregisteredRegistration(Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 3
    const-string/jumbo v0, "gps"

    .line 6
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mActiveOriginalRegistrations:Ljava/util/HashSet;

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 20
    iget-boolean v0, p1, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActiveMotionControl:Z

    .line 22
    if-eqz v0, :cond_1

    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p1, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActiveMotionControl:Z

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mInactiveMotionRegistrations:Ljava/util/HashSet;

    .line 29
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 35
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mInactiveMotionRegistrations:Ljava/util/HashSet;

    .line 37
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 43
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 45
    const/4 p1, 0x1

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->onAvailableMotionStop(Z)V

    .line 49
    :cond_2
    :goto_0
    return-void
.end method

.method public final onUnregister()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 3
    iget-object v1, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    .line 5
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mBackgroundThrottleIntervalChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

    .line 7
    invoke-virtual {v1, v2}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 10
    iget-object v1, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

    .line 12
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mBackgroundThrottlePackageWhitelistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

    .line 14
    invoke-virtual {v1, v2}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 17
    iget-object v1, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    .line 19
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda4;

    .line 21
    invoke-virtual {v1, v2}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 24
    iget-object v1, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    .line 26
    invoke-virtual {v1, v2}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 29
    iget-object v1, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mAdasPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    .line 31
    iget-object v1, v1, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 33
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAdasPackageAllowlistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

    .line 35
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mIgnoreSettingsPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    .line 40
    iget-object v0, v0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 42
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIgnoreSettingsPackageWhitelistChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    .line 49
    iget-object v0, v0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 51
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsListener:Lcom/android/server/location/provider/LocationProviderManager$1;

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    .line 58
    iget-object v0, v0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 60
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda7;

    .line 62
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    .line 67
    iget-object v0, v0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 69
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda11;

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveHelper:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    .line 76
    iget-object v0, v0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 78
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 83
    invoke-static {}, Landroid/location/flags/Flags;->enableLocationBypass()Z

    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEmergencyHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;

    .line 91
    iget-object v0, v0, Lcom/android/server/location/injector/EmergencyHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 93
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEmergencyStateChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda2;

    .line 95
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPackageResetResponder:Lcom/android/server/location/provider/LocationProviderManager$2;

    .line 100
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPackageResetHelper:Lcom/android/server/location/injector/SystemPackageResetHelper;

    .line 102
    invoke-virtual {v1, v0}, Lcom/android/server/location/injector/SystemPackageResetHelper;->unregister(Lcom/android/server/location/injector/PackageResetHelper$Responder;)V

    .line 105
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 107
    iget-object v0, v0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mMotionPowerListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 109
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mMotionPowerSaveModeChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;

    .line 111
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public final onUserStarted(I)V
    .locals 1

    .line 1
    const/16 v0, -0x2710

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, -0x1

    .line 7
    if-ne p1, v0, :cond_1

    .line 9
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    .line 11
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    if-ltz p1, :cond_2

    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const/4 v0, 0x0

    .line 23
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 26
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    .line 28
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    .line 34
    :goto_1
    return-void
.end method

.method public final registerWithService(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p2, Landroid/location/provider/ProviderRequest;

    .line 3
    invoke-virtual {p2}, Landroid/location/provider/ProviderRequest;->isActive()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    .line 12
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/location/provider/LocationProviderManager;->reregisterWithService(Landroid/location/provider/ProviderRequest;Landroid/location/provider/ProviderRequest;Ljava/util/Collection;)V

    .line 15
    :goto_0
    const/4 p0, 0x1

    .line 16
    return p0
.end method

.method public final removeEnabledListener(Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v1, v2, :cond_0

    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 15
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabledListeners:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final reregisterWithService(Landroid/location/provider/ProviderRequest;Landroid/location/provider/ProviderRequest;Ljava/util/Collection;)V
    .locals 7

    .line 2
    invoke-virtual {p1}, Landroid/location/provider/ProviderRequest;->isBypass()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/location/provider/ProviderRequest;->isBypass()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    move-wide v3, v1

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, p3}, Lcom/android/server/location/provider/LocationProviderManager;->calculateRequestDelayMillis(JLjava/util/Collection;)J

    move-result-wide v3

    :goto_1
    cmp-long v0, v3, v1

    if-ltz v0, :cond_2

    .line 5
    invoke-virtual {p2}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    const-wide/16 v0, 0x7530

    cmp-long v0, v3, v0

    if-gez v0, :cond_3

    .line 6
    invoke-virtual {p0, p2}, Lcom/android/server/location/provider/LocationProviderManager;->setProviderRequest(Landroid/location/provider/ProviderRequest;)V

    goto :goto_3

    .line 7
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " provider delaying request update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAlarmHelper:Lcom/android/server/location/injector/SystemAlarmHelper;

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v1, v0}, Lcom/android/server/location/injector/SystemAlarmHelper;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;

    .line 13
    :cond_4
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$5;

    invoke-direct {v0, p0, p2}, Lcom/android/server/location/provider/LocationProviderManager$5;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/provider/ProviderRequest;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;

    .line 14
    invoke-virtual {v1, v3, v4, v0}, Lcom/android/server/location/injector/SystemAlarmHelper;->setDelayedAlarm(JLandroid/app/AlarmManager$OnAlarmListener;)V

    .line 15
    :goto_3
    invoke-virtual {p1}, Landroid/location/provider/ProviderRequest;->isLocationSettingsIgnored()Z

    move-result p1

    .line 16
    invoke-virtual {p2}, Landroid/location/provider/ProviderRequest;->isLocationSettingsIgnored()Z

    move-result p2

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/provider/LocationProviderManager;->checkSettingsIgnoredChanged(ZZLjava/util/Collection;)V

    return-void
.end method

.method public final bridge synthetic reregisterWithService(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/location/provider/ProviderRequest;

    check-cast p2, Landroid/location/provider/ProviderRequest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/provider/LocationProviderManager;->reregisterWithService(Landroid/location/provider/ProviderRequest;Landroid/location/provider/ProviderRequest;Ljava/util/Collection;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final setLastLocation(ILandroid/location/Location;)V
    .locals 8

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 7
    invoke-virtual {p1}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->getRunningUserIds()[I

    .line 10
    move-result-object p1

    .line 11
    :goto_0
    array-length v0, p1

    .line 12
    if-ge v1, v0, :cond_0

    .line 14
    aget v0, p1, v1

    .line 16
    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/provider/LocationProviderManager;->setLastLocation(ILandroid/location/Location;)V

    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void

    .line 23
    :cond_1
    const/4 v0, -0x2

    .line 24
    if-ne p1, v0, :cond_2

    .line 26
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 28
    invoke-virtual {p1}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->getCurrentUserId()I

    .line 31
    move-result p1

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->setLastLocation(ILandroid/location/Location;)V

    .line 35
    return-void

    .line 36
    :cond_2
    if-ltz p1, :cond_3

    .line 38
    const/4 v1, 0x1

    .line 39
    :cond_3
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 42
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 44
    monitor-enter v0

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    .line 47
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;

    .line 53
    if-nez v1, :cond_4

    .line 55
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;

    .line 57
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 60
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    .line 62
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto/16 :goto_9

    .line 69
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    .line 72
    move-result p0

    .line 73
    const-wide/32 v2, 0x927c0

    .line 76
    if-eqz p0, :cond_9

    .line 78
    iget-object p0, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineLocation:Landroid/location/Location;

    .line 80
    if-nez p0, :cond_5

    .line 82
    :goto_2
    move-object p0, p2

    .line 83
    goto :goto_3

    .line 84
    :cond_5
    invoke-virtual {p2}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    .line 87
    move-result-wide v4

    .line 88
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    .line 91
    move-result-wide v6

    .line 92
    cmp-long p1, v4, v6

    .line 94
    if-lez p1, :cond_6

    .line 96
    goto :goto_2

    .line 97
    :cond_6
    :goto_3
    iput-object p0, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineLocation:Landroid/location/Location;

    .line 99
    iget-object p0, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseLocation:Landroid/location/Location;

    .line 101
    if-nez p0, :cond_7

    .line 103
    :goto_4
    move-object p0, p2

    .line 104
    goto :goto_5

    .line 105
    :cond_7
    invoke-virtual {p2}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    .line 108
    move-result-wide v4

    .line 109
    sub-long/2addr v4, v2

    .line 110
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    .line 113
    move-result-wide v6

    .line 114
    cmp-long p1, v4, v6

    .line 116
    if-lez p1, :cond_8

    .line 118
    goto :goto_4

    .line 119
    :cond_8
    :goto_5
    iput-object p0, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseLocation:Landroid/location/Location;

    .line 121
    :cond_9
    iget-object p0, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineBypassLocation:Landroid/location/Location;

    .line 123
    if-nez p0, :cond_a

    .line 125
    :goto_6
    move-object p0, p2

    .line 126
    goto :goto_7

    .line 127
    :cond_a
    invoke-virtual {p2}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    .line 130
    move-result-wide v4

    .line 131
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    .line 134
    move-result-wide v6

    .line 135
    cmp-long p1, v4, v6

    .line 137
    if-lez p1, :cond_b

    .line 139
    goto :goto_6

    .line 140
    :cond_b
    :goto_7
    iput-object p0, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineBypassLocation:Landroid/location/Location;

    .line 142
    iget-object p0, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseBypassLocation:Landroid/location/Location;

    .line 144
    if-nez p0, :cond_c

    .line 146
    goto :goto_8

    .line 147
    :cond_c
    invoke-virtual {p2}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    .line 150
    move-result-wide v4

    .line 151
    sub-long/2addr v4, v2

    .line 152
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    .line 155
    move-result-wide v2

    .line 156
    cmp-long p1, v4, v2

    .line 158
    if-lez p1, :cond_d

    .line 160
    goto :goto_8

    .line 161
    :cond_d
    move-object p2, p0

    .line 162
    :goto_8
    iput-object p2, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseBypassLocation:Landroid/location/Location;

    .line 164
    monitor-exit v0

    .line 165
    return-void

    .line 166
    :goto_9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    throw p0
.end method

.method public setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eq v1, v3, :cond_0

    .line 11
    move v1, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v1, v4

    .line 14
    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 17
    sget-object v1, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    .line 19
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 21
    if-eqz p1, :cond_1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v2, v4

    .line 25
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    new-instance v5, Lcom/android/server/location/eventlog/LocationEventLog$ProviderMockedEvent;

    .line 30
    invoke-direct {v5, v3, v2}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderMockedEvent;-><init>(Ljava/lang/String;Z)V

    .line 33
    invoke-virtual {v1, v5}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog$1(Ljava/lang/Object;)V

    .line 36
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 39
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    :try_start_1
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 42
    iget-object v5, v3, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    .line 44
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 45
    :try_start_2
    iget-object v6, v3, Lcom/android/server/location/provider/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/provider/MockLocationProvider;

    .line 47
    if-ne v6, p1, :cond_2

    .line 49
    monitor-exit v5

    .line 50
    goto :goto_3

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto/16 :goto_5

    .line 54
    :cond_2
    iput-object p1, v3, Lcom/android/server/location/provider/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/provider/MockLocationProvider;

    .line 56
    if-eqz p1, :cond_3

    .line 58
    invoke-virtual {v3, p1}, Lcom/android/server/location/provider/MockableLocationProvider;->setProviderLocked(Lcom/android/server/location/provider/AbstractLocationProvider;)V

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    iget-object v6, v3, Lcom/android/server/location/provider/MockableLocationProvider;->mRealProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 64
    invoke-virtual {v3, v6}, Lcom/android/server/location/provider/MockableLocationProvider;->setProviderLocked(Lcom/android/server/location/provider/AbstractLocationProvider;)V

    .line 67
    :goto_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    :goto_3
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    if-nez p1, :cond_9

    .line 73
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    .line 75
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 78
    move-result p1

    .line 79
    :goto_4
    if-ge v4, p1, :cond_8

    .line 81
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    .line 83
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;

    .line 89
    iget-object v2, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineLocation:Landroid/location/Location;

    .line 91
    const/4 v3, 0x0

    .line 92
    if-eqz v2, :cond_4

    .line 94
    invoke-virtual {v2}, Landroid/location/Location;->isMock()Z

    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_4

    .line 100
    iput-object v3, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineLocation:Landroid/location/Location;

    .line 102
    :cond_4
    iget-object v2, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseLocation:Landroid/location/Location;

    .line 104
    if-eqz v2, :cond_5

    .line 106
    invoke-virtual {v2}, Landroid/location/Location;->isMock()Z

    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_5

    .line 112
    iput-object v3, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseLocation:Landroid/location/Location;

    .line 114
    :cond_5
    iget-object v2, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineBypassLocation:Landroid/location/Location;

    .line 116
    if-eqz v2, :cond_6

    .line 118
    invoke-virtual {v2}, Landroid/location/Location;->isMock()Z

    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_6

    .line 124
    iput-object v3, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mFineBypassLocation:Landroid/location/Location;

    .line 126
    :cond_6
    iget-object v2, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseBypassLocation:Landroid/location/Location;

    .line 128
    if-eqz v2, :cond_7

    .line 130
    invoke-virtual {v2}, Landroid/location/Location;->isMock()Z

    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_7

    .line 136
    iput-object v3, v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->mCoarseBypassLocation:Landroid/location/Location;

    .line 138
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 140
    goto :goto_4

    .line 141
    :catchall_1
    move-exception p0

    .line 142
    goto :goto_6

    .line 143
    :cond_8
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationFudger:Lcom/android/server/location/fudger/LocationFudger;

    .line 145
    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudger;->nextRandomOffset()D

    .line 148
    move-result-wide v1

    .line 149
    iput-wide v1, p0, Lcom/android/server/location/fudger/LocationFudger;->mLatitudeOffsetM:D

    .line 151
    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudger;->nextRandomOffset()D

    .line 154
    move-result-wide v1

    .line 155
    iput-wide v1, p0, Lcom/android/server/location/fudger/LocationFudger;->mLongitudeOffsetM:D

    .line 157
    iget-object p1, p0, Lcom/android/server/location/fudger/LocationFudger;->mClock:Ljava/time/Clock;

    .line 159
    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    .line 162
    move-result-wide v1

    .line 163
    const-wide/32 v3, 0x36ee80

    .line 166
    add-long/2addr v1, v3

    .line 167
    iput-wide v1, p0, Lcom/android/server/location/fudger/LocationFudger;->mNextUpdateRealtimeMs:J

    .line 169
    :cond_9
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 170
    return-void

    .line 171
    :goto_5
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 172
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 173
    :catchall_2
    move-exception p0

    .line 174
    :try_start_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 177
    throw p0

    .line 178
    :goto_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 179
    throw p0
.end method

.method public final setProviderRequest(Landroid/location/provider/ProviderRequest;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAlarmHelper:Lcom/android/server/location/injector/SystemAlarmHelper;

    .line 7
    invoke-virtual {v1, v0}, Lcom/android/server/location/injector/SystemAlarmHelper;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;

    .line 13
    :cond_0
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    new-instance v1, Lcom/android/server/location/eventlog/LocationEventLog$ProviderUpdateEvent;

    .line 20
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 22
    invoke-direct {v1, v2, p1}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderUpdateEvent;-><init>(Ljava/lang/String;Landroid/location/provider/ProviderRequest;)V

    .line 25
    invoke-virtual {v0, v1}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog$1(Ljava/lang/Object;)V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, " provider request changed to "

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    const-string v1, "LocationManagerService"

    .line 50
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 55
    iget-object v0, v0, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    .line 57
    invoke-virtual {v0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->setRequest(Landroid/location/provider/ProviderRequest;)V

    .line 60
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    .line 63
    move-result-object v0

    .line 64
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda16;

    .line 66
    invoke-direct {v1, p0, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/provider/ProviderRequest;)V

    .line 69
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method

.method public setRealProvider(Lcom/android/server/location/provider/AbstractLocationProvider;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v1, v2, :cond_0

    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    :try_start_1
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 21
    iget-object v3, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    .line 23
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 24
    :try_start_2
    iget-object v4, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRealProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 26
    if-ne v4, p1, :cond_1

    .line 28
    monitor-exit v3

    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_2

    .line 32
    :cond_1
    iput-object p1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRealProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 34
    invoke-virtual {p0}, Lcom/android/server/location/provider/MockableLocationProvider;->isMock()Z

    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_2

    .line 40
    iget-object p1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRealProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/MockableLocationProvider;->setProviderLocked(Lcom/android/server/location/provider/AbstractLocationProvider;)V

    .line 45
    :cond_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    :goto_1
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 50
    return-void

    .line 51
    :catchall_1
    move-exception p0

    .line 52
    goto :goto_3

    .line 53
    :goto_2
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 54
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 55
    :catchall_2
    move-exception p0

    .line 56
    :try_start_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    throw p0

    .line 60
    :goto_3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 61
    throw p0
.end method

.method public final startManager(Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne v1, v2, :cond_0

    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v1, v3

    .line 13
    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 16
    iput v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    .line 18
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mStateChangedListener:Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;

    .line 20
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 22
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda0;

    .line 24
    iget-object p1, p1, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    .line 31
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationUserSettingsListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda3;

    .line 33
    iget-object p1, p1, Lcom/android/server/location/settings/LocationSettings;->mUserSettingsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 35
    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 40
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationEnabledChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda4;

    .line 42
    iget-object p1, p1, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationMode:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    .line 44
    invoke-virtual {p1, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 47
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 50
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :try_start_1
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 53
    iget-object p1, p1, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    .line 55
    invoke-virtual {p1}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->start()V

    .line 58
    const/4 p1, -0x1

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onUserStarted(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    monitor-exit v0

    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_1

    .line 69
    :catchall_1
    move-exception p0

    .line 70
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    throw p0

    .line 74
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    throw p0
.end method

.method public final stopManager()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v1, :cond_0

    .line 9
    move v1, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 15
    iput v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    .line 17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 20
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    const/4 v3, -0x1

    .line 22
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    .line 25
    new-instance v3, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;

    .line 27
    const/4 v4, 0x1

    .line 28
    invoke-direct {v3, v4}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;-><init>(I)V

    .line 31
    invoke-virtual {p0, v3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistrationIf(Ljava/util/function/Predicate;)V

    .line 34
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 36
    iget-object v3, v3, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    .line 38
    invoke-virtual {v3}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 46
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda0;

    .line 48
    iget-object v1, v1, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 50
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 53
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    .line 55
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationUserSettingsListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda3;

    .line 57
    iget-object v1, v1, Lcom/android/server/location/settings/LocationSettings;->mUserSettingsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 59
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 62
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 64
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationEnabledChangedListener:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda4;

    .line 66
    iget-object v1, v1, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationMode:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    .line 68
    invoke-virtual {v1, v2}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 71
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabledListeners:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 76
    move-result v1

    .line 77
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 80
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProviderRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 82
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 85
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    .line 87
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 90
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    .line 92
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 95
    const/4 v1, 0x0

    .line 96
    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mStateChangedListener:Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;

    .line 98
    const/4 v1, 0x2

    .line 99
    iput v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    .line 101
    monitor-exit v0

    .line 102
    return-void

    .line 103
    :catchall_0
    move-exception p0

    .line 104
    goto :goto_1

    .line 105
    :catchall_1
    move-exception p0

    .line 106
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 109
    throw p0

    .line 110
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    throw p0
.end method

.method public final unregisterWithService()V
    .locals 3

    .line 1
    sget-object v0, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager;->setProviderRequest(Landroid/location/provider/ProviderRequest;)V

    .line 6
    iget-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIsSettingsIgnored:Z

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/location/provider/LocationProviderManager;->checkSettingsIgnoredChanged(ZZLjava/util/Collection;)V

    .line 13
    return-void
.end method
