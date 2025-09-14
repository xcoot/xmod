.class public final synthetic Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/broadcastradio/hal1/TunerCallback;

.field public final synthetic f$1:Landroid/hardware/radio/ProgramList$Chunk;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/ProgramList$Chunk;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    .line 5
    iput-object p2, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/radio/ProgramList$Chunk;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/radio/ProgramList$Chunk;

    .line 8
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onProgramListUpdated$10(Landroid/hardware/radio/ProgramList$Chunk;)V

    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/radio/ProgramList$Chunk;

    .line 16
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$sendProgramListUpdate$9(Landroid/hardware/radio/ProgramList$Chunk;)V

    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
