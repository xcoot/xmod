.class public final synthetic Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;

.field public final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    .line 4
    .line 5
    sget v1, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;->$r8$clinit:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "transparency"

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/android/internal/os/IBinaryTransparencyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IBinaryTransparencyService;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/os/IBinaryTransparencyService;->recordMeasurementsForAllPackages()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    sput-wide v1, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;->sTimeLastRanMs:J

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, p0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    const-string v0, "TransparencyService"

    .line 37
    .line 38
    const-string v1, "Taking binary measurements was interrupted."

    .line 39
    .line 40
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method
