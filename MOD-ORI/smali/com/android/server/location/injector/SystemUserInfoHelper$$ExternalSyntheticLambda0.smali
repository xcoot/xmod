.class public final synthetic Lcom/android/server/location/injector/SystemUserInfoHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/injector/SystemUserInfoHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUserVisibilityChanged(IZ)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v1, "visibility of u"

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " changed to "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    const-string/jumbo v1, "visible"

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string/jumbo v1, "invisible"

    .line 29
    .line 30
    .line 31
    :goto_0
    const-string v2, "LocationManagerService"

    .line 32
    .line 33
    invoke-static {v0, v1, v2}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance v1, Lcom/android/server/location/eventlog/LocationEventLog$LocationEnabledEvent;

    .line 42
    .line 43
    const/4 v2, 0x2

    .line 44
    invoke-direct {v1, p1, v2, p2}, Lcom/android/server/location/eventlog/LocationEventLog$LocationEnabledEvent;-><init>(IIZ)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog$1(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_1

    .line 61
    .line 62
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    check-cast p2, Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    .line 67
    .line 68
    const/4 v0, 0x4

    .line 69
    invoke-interface {p2, p1, v0}, Lcom/android/server/location/injector/UserInfoHelper$UserListener;->onUserChanged(II)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    return-void
.end method
