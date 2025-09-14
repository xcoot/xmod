.class public final synthetic Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda14;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda14;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/android/server/location/provider/LocationProviderManager;

    .line 9
    .line 10
    check-cast p1, Landroid/location/Location;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/location/Location;->hasMslAltitude()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    :try_start_0
    new-instance v0, Landroid/location/Location;

    .line 28
    .line 29
    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAltitudeConverter:Landroid/location/altitude/AltitudeConverter;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroid/location/altitude/AltitudeConverter;->tryAddMslAltitudeToLocation(Landroid/location/Location;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    move-object p1, v0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIsAltitudeConverterIdle:Z

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    iput-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIsAltitudeConverterIdle:Z

    .line 48
    .line 49
    invoke-static {}, Lcom/android/server/IoThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    new-instance v2, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda16;

    .line 54
    .line 55
    invoke-direct {v2, p0, v0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/Location;)V

    .line 56
    .line 57
    .line 58
    check-cast v1, Landroid/os/HandlerExecutor;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string/jumbo v1, "not adding MSL altitude to location: "

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string v0, "LocationManagerService"

    .line 81
    .line 82
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    :cond_1
    :goto_0
    return-object p1

    .line 86
    :pswitch_0
    check-cast p0, Landroid/location/LocationResult;

    .line 87
    .line 88
    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 89
    .line 90
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
