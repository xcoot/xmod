.class public final Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;
.super Lcom/android/server/people/data/AbstractProtoDiskReadWriter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;-><init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final protoStreamReader()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader;
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    invoke-direct {p0, v0}, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter$$ExternalSyntheticLambda0;-><init>(I)V

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_0
    new-instance p0, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    invoke-direct {p0, v0}, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter$$ExternalSyntheticLambda0;-><init>(I)V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final protoStreamWriter()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter;
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, v0}, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter$$ExternalSyntheticLambda0;-><init>(I)V

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_0
    new-instance p0, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0}, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter$$ExternalSyntheticLambda0;-><init>(I)V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
