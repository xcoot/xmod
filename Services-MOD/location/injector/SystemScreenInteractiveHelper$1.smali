.class public final Lcom/android/server/location/injector/SystemScreenInteractiveHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/location/injector/SystemScreenInteractiveHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper$1;->this$0:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x1

    .line 12
    if-eqz p1, :cond_0

    .line 14
    move p1, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p1, "android.intent.action.SCREEN_OFF"

    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_4

    .line 28
    const/4 p1, 0x0

    .line 29
    :goto_0
    iget-object p0, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper$1;->this$0:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    .line 31
    iget-boolean p2, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mIsInteractive:Z

    .line 33
    if-ne p1, p2, :cond_1

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mIsInteractive:Z

    .line 38
    const-string/jumbo p2, "screen interactive is now "

    .line 41
    const-string v1, "LocationManagerService"

    .line 43
    invoke-static {p2, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 46
    iget-object p0, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 48
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object p0

    .line 52
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_4

    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;

    .line 64
    iget-object p1, p1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 66
    iget-object p2, p1, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    .line 68
    iget-boolean v1, p2, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mReady:Z

    .line 70
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 73
    iget p2, p2, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mLocationPowerSaveMode:I

    .line 75
    if-eq p2, v0, :cond_2

    .line 77
    const/4 v1, 0x2

    .line 78
    if-eq p2, v1, :cond_3

    .line 80
    const/4 v1, 0x4

    .line 81
    if-eq p2, v1, :cond_3

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    const-string/jumbo p2, "gps"

    .line 87
    iget-object v1, p1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 89
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result p2

    .line 93
    if-nez p2, :cond_3

    .line 95
    goto :goto_1

    .line 96
    :cond_3
    new-instance p2, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;

    .line 98
    const/4 v1, 0x2

    .line 99
    invoke-direct {p2, v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;-><init>(I)V

    .line 102
    invoke-virtual {p1, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 105
    goto :goto_1

    .line 106
    :cond_4
    :goto_2
    return-void
.end method
