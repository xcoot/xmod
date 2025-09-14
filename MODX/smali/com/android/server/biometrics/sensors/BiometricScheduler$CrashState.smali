.class public final Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final currentOperation:Ljava/lang/String;

.field public final pendingOperations:Ljava/util/List;

.field public final timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;->timestamp:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;->currentOperation:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;->pendingOperations:Ljava/util/List;

    .line 10
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;->timestamp:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ": Current Operation: {"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;->currentOperation:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string/jumbo v1, "}, Pending Operations("

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;->pendingOperations:Ljava/util/List;

    .line 29
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ")"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;->pendingOperations:Ljava/util/List;

    .line 43
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_0

    .line 49
    const-string v1, ": "

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_0
    const/4 v1, 0x0

    .line 55
    :goto_0
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;->pendingOperations:Ljava/util/List;

    .line 57
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 60
    move-result v2

    .line 61
    if-ge v1, v2, :cond_2

    .line 63
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;->pendingOperations:Ljava/util/List;

    .line 65
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Ljava/lang/String;

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;->pendingOperations:Ljava/util/List;

    .line 76
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 79
    move-result v2

    .line 80
    add-int/lit8 v2, v2, -0x1

    .line 82
    if-ge v1, v2, :cond_1

    .line 84
    const-string v2, ", "

    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object p0

    .line 96
    return-object p0
.end method
