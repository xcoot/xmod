.class public final synthetic Lcom/android/server/biometrics/log/ALSProbe$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/log/ALSProbe;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/log/ALSProbe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/log/ALSProbe$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/log/ALSProbe;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/log/ALSProbe$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/log/ALSProbe;

    .line 2
    .line 3
    const-string v0, "Max time exceeded for ALS logger - disabling: "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    const-string v1, "ALSProbe"

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensorListener:Lcom/android/server/biometrics/log/ALSProbe$1;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLastAmbientLux:F

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/log/ALSProbe;->onNext(F)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/ALSProbe;->disable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    monitor-exit p0

    .line 41
    throw v0
.end method
