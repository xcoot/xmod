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

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$1:I

    .line 6
    .line 7
    iput p3, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$2:I

    .line 8
    .line 9
    iput p4, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$3:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$1:I

    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$2:I

    .line 11
    .line 12
    iget p0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$3:I

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v4, "DisplayStateListener#onStart : "

    .line 20
    .line 21
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v4, ", "

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const-string v4, "SemBiometricDisplayStateMonitor"

    .line 40
    .line 41
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iput v1, v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mLogicalDisplayState:I

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mDisplayStateCallbacks:Ljava/util/List;

    .line 47
    .line 48
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;

    .line 65
    .line 66
    invoke-interface {v3, v1, v2, p0}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;->onStartDisplayState(III)V

    .line 67
    .line 68
    .line 69
    const/4 v4, 0x2

    .line 70
    if-ne v1, v4, :cond_1

    .line 71
    .line 72
    invoke-interface {v3}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;->onDisplayOn()V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const/4 v4, 0x1

    .line 77
    if-ne v1, v4, :cond_0

    .line 78
    .line 79
    invoke-interface {v3}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;->onDisplayOff()V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    return-void

    .line 84
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    .line 85
    .line 86
    iget v1, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$1:I

    .line 87
    .line 88
    iget v2, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$2:I

    .line 89
    .line 90
    iget p0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$3:I

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v4, "DisplayStateListener#onFinish : "

    .line 98
    .line 99
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v4, ", "

    .line 106
    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    const-string v4, "SemBiometricDisplayStateMonitor"

    .line 118
    .line 119
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    iput v1, v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mLogicalDisplayState:I

    .line 123
    .line 124
    iput v2, v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mPhysicalDisplayState:I

    .line 125
    .line 126
    iget-object v0, v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mDisplayStateCallbacks:Ljava/util/List;

    .line 127
    .line 128
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_3

    .line 139
    .line 140
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    check-cast v3, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;

    .line 145
    .line 146
    invoke-interface {v3, v1, v2, p0}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;->onFinishDisplayState(III)V

    .line 147
    .line 148
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
