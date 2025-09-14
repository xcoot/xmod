.class public final synthetic Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/timedetector/TimeDetectorInternalImpl;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timedetector/TimeDetectorInternalImpl;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/TimeDetectorInternalImpl;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/TimeDetectorInternalImpl;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lcom/android/server/timedetector/GnssTimeSuggestion;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/timedetector/TimeDetectorInternalImpl;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    .line 13
    .line 14
    check-cast v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->suggestGnssTime(Lcom/android/server/timedetector/GnssTimeSuggestion;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/TimeDetectorInternalImpl;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lcom/android/server/timedetector/NetworkTimeSuggestion;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/timedetector/TimeDetectorInternalImpl;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    .line 27
    .line 28
    check-cast v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->suggestNetworkTime(Lcom/android/server/timedetector/NetworkTimeSuggestion;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
