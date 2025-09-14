.class public final Lcom/android/server/app/GameServiceController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public volatile mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

.field public volatile mActiveGameServiceProviderPackage:Ljava/lang/String;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mContext:Landroid/content/Context;

.field public volatile mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

.field public mGameServicePackageChangedReceiver:Lcom/android/server/app/GameServiceController$PackageChangedBroadcastReceiver;

.field public volatile mGameServiceProviderInstance:Lcom/android/server/app/GameServiceProviderInstanceImpl;

.field public final mGameServiceProviderInstanceFactory:Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;

.field public volatile mGameServiceProviderOverride:Ljava/lang/String;

.field public final mGameServiceProviderSelector:Lcom/android/server/app/GameServiceProviderSelectorImpl;

.field public volatile mHasBootCompleted:Z

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/server/app/GameServiceProviderSelectorImpl;Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/app/GameServiceController;->mLock:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lcom/android/server/app/GameServiceController;->mContext:Landroid/content/Context;

    .line 13
    iput-object p4, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstanceFactory:Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;

    .line 15
    iput-object p2, p0, Lcom/android/server/app/GameServiceController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 17
    iput-object p3, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderSelector:Lcom/android/server/app/GameServiceProviderSelectorImpl;

    .line 19
    return-void
.end method


# virtual methods
.method public final evaluateGameServiceProviderPackageChangedListenerLocked(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceProviderPackage:Ljava/lang/String;

    .line 3
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mGameServicePackageChangedReceiver:Lcom/android/server/app/GameServiceController$PackageChangedBroadcastReceiver;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    iget-object v1, p0, Lcom/android/server/app/GameServiceController;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/server/app/GameServiceController;->mGameServicePackageChangedReceiver:Lcom/android/server/app/GameServiceController$PackageChangedBroadcastReceiver;

    .line 22
    :cond_1
    iput-object p1, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceProviderPackage:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceProviderPackage:Ljava/lang/String;

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 32
    return-void

    .line 33
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    .line 35
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 38
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string/jumbo v1, "package"

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-virtual {v0, p1, v1}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 63
    new-instance v1, Lcom/android/server/app/GameServiceController$PackageChangedBroadcastReceiver;

    .line 65
    invoke-direct {v1, p0, p1}, Lcom/android/server/app/GameServiceController$PackageChangedBroadcastReceiver;-><init>(Lcom/android/server/app/GameServiceController;Ljava/lang/String;)V

    .line 68
    iput-object v1, p0, Lcom/android/server/app/GameServiceController;->mGameServicePackageChangedReceiver:Lcom/android/server/app/GameServiceController$PackageChangedBroadcastReceiver;

    .line 70
    iget-object p0, p0, Lcom/android/server/app/GameServiceController;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    return-void
.end method

.method public final setCurrentForegroundUserAndEvaluateProvider(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

    .line 3
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 9
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    iput-object p1, p0, Lcom/android/server/app/GameServiceController;->mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

    .line 14
    iget-object p1, p0, Lcom/android/server/app/GameServiceController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 16
    new-instance v0, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;

    .line 18
    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceController;)V

    .line 21
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 24
    return-void
.end method
