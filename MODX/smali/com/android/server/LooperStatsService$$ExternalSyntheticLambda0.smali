.class public final synthetic Lcom/android/server/LooperStatsService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/LooperStatsService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/LooperStatsService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    check-cast p1, Lcom/android/internal/os/LooperStats$ExportedEntry;

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 8
    iget-object p0, p1, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageName:Ljava/lang/String;

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p1, Lcom/android/internal/os/LooperStats$ExportedEntry;->handlerClassName:Ljava/lang/String;

    .line 13
    return-object p0

    .line 14
    :pswitch_1
    iget-object p0, p1, Lcom/android/internal/os/LooperStats$ExportedEntry;->threadName:Ljava/lang/String;

    .line 16
    return-object p0

    .line 17
    :pswitch_2
    iget p0, p1, Lcom/android/internal/os/LooperStats$ExportedEntry;->workSourceUid:I

    .line 19
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
