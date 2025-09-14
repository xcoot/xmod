.class public final synthetic Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;IIII)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    .line 5
    iput p2, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    iput p3, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    iput p4, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$3:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    .line 8
    iget v1, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$1:I

    .line 10
    iget v2, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$2:I

    .line 12
    iget p0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$3:I

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    const-string v4, "DisplayStateListener#onStart : "

    .line 21
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v4, ", "

    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    const-string v4, "SemBiometricDisplayStateMonitor"

    .line 41
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iput v1, v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mLogicalDisplayState:I

    .line 46
    iget-object v0, v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mDisplayStateCallbacks:Ljava/util/List;

    .line 48
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 50
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object v0

    .line 54
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_2

    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;

    .line 66
    invoke-interface {v3, v1, v2, p0}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;->onStartDisplayState(III)V

    .line 69
    const/4 v4, 0x2

    .line 70
    if-ne v1, v4, :cond_1

    .line 72
    invoke-interface {v3}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;->onDisplayOn()V

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const/4 v4, 0x1

    .line 77
    if-ne v1, v4, :cond_0

    .line 79
    invoke-interface {v3}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;->onDisplayOff()V

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    return-void

    .line 84
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    .line 86
    iget v1, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$1:I

    .line 88
    iget v2, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$2:I

    .line 90
    iget p0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$3:I

    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    .line 97
    const-string v4, "DisplayStateListener#onFinish : "

    .line 99
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    const-string v4, ", "

    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object v3

    .line 117
    const-string v4, "SemBiometricDisplayStateMonitor"

    .line 119
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iput v1, v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mLogicalDisplayState:I

    .line 124
    iput v2, v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mPhysicalDisplayState:I

    .line 126
    iget-object v0, v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mDisplayStateCallbacks:Ljava/util/List;

    .line 128
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 130
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 133
    move-result-object v0

    .line 134
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_3

    .line 140
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    move-result-object v3

    .line 144
    check-cast v3, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;

    .line 146
    invoke-interface {v3, v1, v2, p0}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;->onFinishDisplayState(III)V

    .line 149
    goto :goto_1

    .line 150
    :cond_3
    return-void

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
