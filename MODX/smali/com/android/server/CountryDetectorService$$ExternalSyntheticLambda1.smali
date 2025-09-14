.class public final synthetic Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/CountryDetectorService;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/CountryDetectorService;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/CountryDetectorService;

    .line 5
    iput-object p2, p0, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/CountryDetectorService;

    .line 8
    iget-object p0, p0, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 10
    check-cast p0, Landroid/location/Country;

    .line 12
    iget-object v1, v0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    iget-object v0, v0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    .line 17
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v0

    .line 25
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/android/server/CountryDetectorService$Receiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :try_start_1
    iget-object v2, v2, Lcom/android/server/CountryDetectorService$Receiver;->mListener:Landroid/location/ICountryListener;

    .line 39
    invoke-interface {v2, p0}, Landroid/location/ICountryListener;->onCountryDetected(Landroid/location/Country;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :catch_0
    move-exception v2

    .line 46
    :try_start_2
    const-string v3, "CountryDetector"

    .line 48
    const-string/jumbo v4, "notifyReceivers failed:"

    .line 51
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    monitor-exit v1

    .line 56
    return-void

    .line 57
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    throw p0

    .line 59
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/CountryDetectorService;

    .line 61
    iget-object p0, p0, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 63
    check-cast p0, Landroid/location/CountryListener;

    .line 65
    iget-object v0, v0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/countrydetector/CountryDetectorBase;

    .line 67
    invoke-virtual {v0, p0}, Lcom/android/server/location/countrydetector/CountryDetectorBase;->setCountryListener(Landroid/location/CountryListener;)V

    .line 70
    return-void

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
