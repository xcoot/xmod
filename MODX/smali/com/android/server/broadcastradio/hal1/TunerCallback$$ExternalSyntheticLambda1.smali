.class public final synthetic Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/broadcastradio/hal1/TunerCallback;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    .line 5
    iput-boolean p2, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    .line 8
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda1;->f$1:Z

    .line 10
    invoke-virtual {v0, p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onTrafficAnnouncement$3(Z)V

    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    .line 16
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda1;->f$1:Z

    .line 18
    invoke-virtual {v0, p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onAntennaState$5(Z)V

    .line 21
    return-void

    .line 22
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    .line 24
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda1;->f$1:Z

    .line 26
    invoke-virtual {v0, p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onEmergencyAnnouncement$4(Z)V

    .line 29
    return-void

    .line 30
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    .line 32
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda1;->f$1:Z

    .line 34
    invoke-virtual {v0, p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onBackgroundScanAvailabilityChange$6(Z)V

    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
