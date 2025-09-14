.class public final synthetic Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/display/ExternalDisplayStatsService$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/ExternalDisplayStatsService$1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/ExternalDisplayStatsService$1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/ExternalDisplayStatsService$1;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p0, v0}, Lcom/android/server/display/ExternalDisplayStatsService;->-$$Nest$mlogStateAfterAudioSinkChanged(Lcom/android/server/display/ExternalDisplayStatsService;Z)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-static {p0, v0}, Lcom/android/server/display/ExternalDisplayStatsService;->-$$Nest$mlogStateAfterAudioSinkChanged(Lcom/android/server/display/ExternalDisplayStatsService;Z)V

    .line 19
    .line 20
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
