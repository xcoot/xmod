.class public final Lcom/android/server/location/gnss/GnssNavigationMessageProvider;
.super Lcom/android/server/location/gnss/GnssListenerMultiplexer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;


# instance fields
.field public final mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

.field public final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;


# direct methods
.method public constructor <init>(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;-><init>(Lcom/android/server/location/injector/Injector;)V

    .line 4
    check-cast p1, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 6
    iget-object p1, p1, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 8
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 10
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 12
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V

    .line 15
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addNavigationMessageCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;)V

    .line 18
    return-void
.end method


# virtual methods
.method public final createRegistration(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 3
    check-cast p3, Landroid/location/IGnssNavigationMessageListener;

    .line 5
    new-instance p1, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageListenerRegistration;

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p1, p2, p3, p0, v0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;-><init>(Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;Lcom/android/server/location/gnss/GnssListenerMultiplexer;Ljava/lang/Object;)V

    .line 11
    return-object p1
.end method

.method public final getListenerType()Landroid/location/LocationConstants$LISTENER_TYPE;
    .locals 0

    .line 1
    sget-object p0, Landroid/location/LocationConstants$LISTENER_TYPE;->GNSS_NAVIGATION_MESSAGE:Landroid/location/LocationConstants$LISTENER_TYPE;

    .line 3
    return-object p0
.end method

.method public final isSupported()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->isNavigationMessageCollectionSupported()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final registerWithService(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    .line 3
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 5
    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->startNavigationMessageCollection()Z

    .line 8
    move-result p0

    .line 9
    const-string p1, "GnssManager"

    .line 11
    if-eqz p0, :cond_0

    .line 13
    const-string/jumbo p0, "starting gnss navigation messages"

    .line 16
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string/jumbo p0, "error starting gnss navigation messages"

    .line 24
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
.end method

.method public final unregisterWithService()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->stopNavigationMessageCollection()Z

    .line 6
    move-result p0

    .line 7
    const-string v0, "GnssManager"

    .line 9
    if-eqz p0, :cond_0

    .line 11
    const-string/jumbo p0, "stopping gnss navigation messages"

    .line 14
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string/jumbo p0, "error stopping gnss navigation messages"

    .line 21
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :goto_0
    return-void
.end method
