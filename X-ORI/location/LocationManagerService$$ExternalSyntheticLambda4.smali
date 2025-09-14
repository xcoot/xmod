.class public final synthetic Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/location/LocationManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSettingChanged(I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/location/LocationManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 4
    .line 5
    check-cast v0, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper;->isLocationEnabled(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {}, Landroid/location/LocationManager;->invalidateLocalLocationEnabledCaches()V

    .line 14
    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "[u"

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, "] location enabled = "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "LocationManagerService"

    .line 39
    .line 40
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    sget-object v1, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    new-instance v2, Lcom/android/server/location/eventlog/LocationEventLog$LocationEnabledEvent;

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-direct {v2, p1, v3, v0}, Lcom/android/server/location/eventlog/LocationEventLog$LocationEnabledEvent;-><init>(IIZ)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog$1(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->logLocationEnabledState()V

    .line 58
    .line 59
    .line 60
    new-instance v1, Landroid/content/Intent;

    .line 61
    .line 62
    const-string v2, "android.location.MODE_CHANGED"

    .line 63
    .line 64
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v2, "android.location.extra.LOCATION_ENABLED"

    .line 68
    .line 69
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const/high16 v1, 0x40000000    # 2.0f

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const/high16 v1, 0x10000000

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->refreshAppOpsRestrictions(I)V

    .line 95
    .line 96
    .line 97
    return-void
.end method
