.class public final synthetic Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/LocationManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onLocationUserSettingsChanged(ILcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/LocationManagerService;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-boolean p2, p2, Lcom/android/server/location/settings/LocationUserSettings;->mAdasGnssLocationEnabled:Z

    .line 8
    iget-boolean p3, p3, Lcom/android/server/location/settings/LocationUserSettings;->mAdasGnssLocationEnabled:Z

    .line 10
    if-eq p2, p3, :cond_0

    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    .line 14
    const-string v0, "[u"

    .line 16
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v0, "] adas gnss location enabled = "

    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p2

    .line 34
    const-string v0, "LocationManagerService"

    .line 36
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sget-object p2, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    .line 41
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$LocationEnabledEvent;

    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-direct {v0, p1, v1, p3}, Lcom/android/server/location/eventlog/LocationEventLog$LocationEnabledEvent;-><init>(IIZ)V

    .line 50
    invoke-virtual {p2, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog$1(Ljava/lang/Object;)V

    .line 53
    new-instance p2, Landroid/content/Intent;

    .line 55
    const-string v0, "android.location.action.ADAS_GNSS_ENABLED_CHANGED"

    .line 57
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    const-string v0, "android.location.extra.ADAS_GNSS_ENABLED"

    .line 62
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    move-result-object p2

    .line 66
    const/high16 p3, 0x40000000    # 2.0f

    .line 68
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    move-result-object p2

    .line 72
    const/high16 p3, 0x10000000

    .line 74
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    move-result-object p2

    .line 78
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 87
    :cond_0
    return-void
.end method
