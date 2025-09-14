.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda0;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda0;B)V
    .locals 0

    .line 2
    const/4 p3, 0x2

    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda0;C)V
    .locals 0

    .line 3
    const/4 p3, 0x3

    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;Ljava/lang/Object;I)V
    .locals 0

    .line 4
    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    .line 8
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 10
    check-cast p0, Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    .line 12
    iput-object p0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mAodController:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    .line 14
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mPendingRequestBeforeListener:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/Runnable;

    .line 32
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mPendingRequestBeforeListener:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 41
    return-void

    .line 42
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    .line 44
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 46
    check-cast p0, Ljava/lang/Runnable;

    .line 48
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mAodController:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    .line 50
    if-nez v1, :cond_1

    .line 52
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mPendingRequestBeforeListener:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 61
    :goto_1
    return-void

    .line 62
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    .line 64
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 66
    check-cast p0, Ljava/lang/Runnable;

    .line 68
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mAodController:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    .line 70
    if-nez v1, :cond_2

    .line 72
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mPendingRequestBeforeListener:Ljava/util/ArrayList;

    .line 74
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 81
    :goto_2
    return-void

    .line 82
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    .line 84
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 86
    check-cast p0, Ljava/lang/Runnable;

    .line 88
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mAodController:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    .line 90
    if-nez v1, :cond_3

    .line 92
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mPendingRequestBeforeListener:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    goto :goto_3

    .line 98
    :cond_3
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 101
    :goto_3
    return-void

    .line 102
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    .line 104
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 106
    check-cast p0, Ljava/lang/Runnable;

    .line 108
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mAodController:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    .line 110
    if-nez v1, :cond_4

    .line 112
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mPendingRequestBeforeListener:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    goto :goto_4

    .line 118
    :cond_4
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 121
    :goto_4
    return-void

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
